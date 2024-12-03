import 'package:flutter/material.dart';
import 'package:polish_app/models/table.dart';
import 'package:polish_app/models/grammar_example_sentences.dart';
import 'package:polish_app/models/line_management.dart';
import 'package:polish_app/models/questions.dart';
import 'package:polish_app/assets/questions/q1.dart';

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
            Questions(
                title: '1',
                sentences: [
                    question_set_1[0],
                    question_set_1[1],
                    question_set_1[2],
                ],
            ),
          ],
        ),
      ),
    );
  }
}