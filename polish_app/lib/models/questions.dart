import 'package:flutter/material.dart';
import 'package:polish_app/models/grammar_example_sentences.dart';
class Questions extends StatelessWidget {
  final String title;
  final List<ExampleSentence> sentences;
  const Questions({super.key, required this.sentences, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            if (title != "1") Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                ),
            ),
            for (var sentence in sentences) ... [
                const SizedBox(height: 12),
                sentence,
            ],
        ],
      ),
    );
  }
}