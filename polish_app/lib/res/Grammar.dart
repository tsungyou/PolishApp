import 'package:flutter/material.dart';
import '../grammar/hashtag_1.dart';
import '../grammar/hashtag_2.dart';
import '../grammar/hashtag_3.dart';
import '../grammar/hashtag_4.dart';

class GrammarPage extends StatefulWidget {
  const GrammarPage({super.key});

  @override
  State<GrammarPage> createState() => _GrammarPageState();
}

class _GrammarPageState extends State<GrammarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Hashtag1(),
    const Hashtag2(),
    const Hashtag3(),
    const Hashtag4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grammar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Grammar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('(#${index + 1})第${index + 1}格'),
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => _pages[_selectedIndex]));
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