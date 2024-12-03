import 'package:flutter/material.dart';

class Hashtag3 extends StatefulWidget {
  const Hashtag3({super.key});

  @override
  State<Hashtag3> createState() => _Hashtag3State();
}

class _Hashtag3State extends State<Hashtag3> {
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
        title: const Text('Hashtag 3'),
      ),
      body: Scaffold(
        body: Column(
          children: [
            Text('Hashtag 3'),
          ],
        ),
      ),
    );
  }
}