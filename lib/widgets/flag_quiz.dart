import 'dart:math';
import 'package:flutter/material.dart';
import 'flag_image.dart';

final randomizer = Random();

const flagPaths = [
  'assets/images/kingdom.png',
  'assets/images/irland.png',
  'assets/images/Portugal.png',
];

class FlagQuiz extends StatefulWidget {
  const FlagQuiz({super.key});

  @override
  State<FlagQuiz> createState() => _FlagQuizState();
}

class _FlagQuizState extends State<FlagQuiz> {
  int activeFlagIndex = 0;

  void nextFlag() {
    setState(() {
      activeFlagIndex = randomizer.nextInt(flagPaths.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Угадай флаг',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        FlagImage(flagPaths[activeFlagIndex]),
        const SizedBox(height: 24),
        TextButton(
          onPressed: nextFlag,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Следующий'),
        ),
      ],
    );
  }
}