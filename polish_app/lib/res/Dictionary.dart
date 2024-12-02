import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/word.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  String searchQuery = '';
  List<Word> words = [];

  @override
  void initState() {
    super.initState();
    _loadWords();
  }

  Future<void> _loadWords() async {
    final String response = await rootBundle.loadString('words.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      words = data.map((item) => Word.fromMap(item)).toList();
    });
  }

  Future<void> onSearchChanged(String query) async {
    setState(() {
      searchQuery = query;
    });

    if (query.isEmpty) {
      _loadWords();
      return;
    }

    final filteredWords = words.where((word) {
      return word.word.toLowerCase().contains(query.toLowerCase()) ||
             word.definition.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      words = filteredWords;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: onSearchChanged,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: words.length,
              itemBuilder: (context, index) {
                final word = words[index];
                return ListTile(
                  title: Text(word.word),
                  subtitle: Text(word.definition),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(word.word),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Definition:', style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(word.definition),
                                // Add more word details here if needed
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}