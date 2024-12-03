import 'package:flutter/material.dart';
import 'package:polish_app/models/table.dart';
import 'package:polish_app/models/grammar_example_sentences.dart';
import 'package:polish_app/models/line_management.dart';
class Hashtag1 extends StatefulWidget {
  const Hashtag1({super.key});

  @override
  State<Hashtag1> createState() => _Hashtag1State();
}

class _Hashtag1State extends State<Hashtag1> {
  final double _fontSize = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('第一格'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaddingLineText(line: '第一格(Nominal Case/mianownik): 主詞', isBold: true),
            LatexTable(
              inputString: '''  名詞 & 1 // 
                                陰性 & -a的單字(ex: kobieta) // 
                                中性 & -e/-o 的單字(ex: dziecko) // 
                                陽性 & 除了上面兩個的單字(ex: jeden)''',
              tableColor: Colors.grey.shade400,
            ),
            MultiLineText(lines: '''第一格的單字通常會放在句子的最前面 // 
                                需要注意的是「用來形容主詞的形容詞也必須跟著變化」，例如陰性主詞的形容詞也必須以-a結尾 // 
                                不過第一格的形容詞和名詞的變化一樣，所以只需要一個表格，除了'''
            ),
            LatexTable(
              inputString: '形容詞 & 1 // 中性 & -e(ex: małe) // 複數 & -o(ex: mało)',
              fontSize: _fontSize,
              tableColor: Colors.grey.shade400,
            ),
            const SizedBox(height: 24),
            PaddingLineText(line: '例如:'),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Example Sentences:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ExampleSentence(
                    number: 1,
                    sentence: 'To jest małe dziecko.',
                    hiddenWord: 'małe',
                    translation: 'This is a small child.',
                  ),
                  const SizedBox(height: 12),
                  ExampleSentence(
                    number: 2,
                    sentence: 'Mam dobre auto.',
                    hiddenWord: 'dobre',
                    translation: 'I have a good car.',
                  ),
                  const SizedBox(height: 12),
                  ExampleSentence(
                    number: 3,
                    sentence: 'To jest tanie mieszkanie.',
                    hiddenWord: 'tanie',
                    translation: 'This is a cheap apartment.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}