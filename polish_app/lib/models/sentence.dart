class Sentence {
    final int? id;
    final String sentence;
    final String translation;
    final String mandarin;
    final List<String> vocabs;

    Word({
        this.id,
        required this.sentence,
        required this.translation,
        required this.mandarin,
        required this.vocabs,
    });

    factory Sentence.fromMap(Map<String, dynamic> map) {
        return Sentence(
            id: map['id'],
            sentence: map['sentence'],
            translation: map['translation'],
            mandarin: map['mandarin'],
            vocabs: List<String>.from(map['vocabs']),
        );
    }
}