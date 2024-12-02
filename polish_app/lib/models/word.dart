class Word {
  final int? id;
  final String word;
  final String definition;
  final String? mandarin;
  final String? examples;

  Word({
    this.id,
    required this.word,
    required this.definition,
    this.mandarin,
    this.examples,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word': word,
      'definition': definition,
      'mandarin': mandarin,
      'examples': examples,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      id: map['id'],
      word: map['word'],
      definition: map['definition'],
      mandarin: map['mandarin'],
      examples: map['examples'],
    );
  }
}
