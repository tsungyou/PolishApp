class Word {
  final int? id;
  final String word;
  final String definition;
  final String? partOfSpeech;
  final String? examples;

  Word({
    this.id,
    required this.word,
    required this.definition,
    this.partOfSpeech,
    this.examples,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word': word,
      'definition': definition,
      'partOfSpeech': partOfSpeech,
      'examples': examples,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      id: map['id'],
      word: map['word'],
      definition: map['definition'],
      partOfSpeech: map['partOfSpeech'],
      examples: map['examples'],
    );
  }
}
