import 'package:flutter/material.dart';

class Hashtag4 extends StatefulWidget {
  const Hashtag4({super.key});

  @override
  State<Hashtag4> createState() => _Hashtag4State();
}

class _Hashtag4State extends State<Hashtag4> {
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
        title: const Text('Hashtag 4'),
      ),
      body: Scaffold(
        body: Column(
          children: [
            Text('Hashtag 4'),
          ],
        ),
      ),
    );
  }
}