class Verb {
    final int? id;
    final String word;
    final String definition;
    final String mandarin;

    Verb({
        this.id,
        required this.word,
        required this.definition,
        required this.mandarin,
    });

    factory Verb.fromMap(Map<String, dynamic> map) {
        return Verb(
            id: map['id'],
            word: map['word'],
            definition: map['definition'],
            mandarin: map['mandarin'],
        );
    }
}