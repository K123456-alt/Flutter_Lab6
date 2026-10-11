import 'package:flutter/material.dart';
import 'widgets/gradient_container.dart';

void main() {
  runApp(const FlagQuizApp());
}

class FlagQuizApp extends StatelessWidget {
  const FlagQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guess the Flag',
      home: Scaffold(
        body: GradientContainer(),
      ),
    );
  }
}