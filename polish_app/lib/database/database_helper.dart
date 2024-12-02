import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'dictionary.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE words(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        word TEXT NOT NULL,
        definition TEXT NOT NULL,
    ''');
  }

  Future<List<Map<String, dynamic>>> getAllWords() async {
    final db = await database;
    return await db.query('words');
  }

  // Search words
  Future<List<Map<String, dynamic>>> searchWords(String query) async {
    final db = await database;
    return await db.query(
      'words',
      where: 'word LIKE ?',
      whereArgs: ['%$query%'],
    );
  }
}