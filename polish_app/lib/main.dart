import 'package:flutter/material.dart';
import 'home_screen.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polish Learning App',
      theme: ThemeData(
        fontFamily: 'NotoSansSC',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFDC143C)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
