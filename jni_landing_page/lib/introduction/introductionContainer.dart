import 'package:flutter/material.dart';

class IntroductionContainer extends StatelessWidget {
  const IntroductionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/images/ktm.jpg',
              scale: 6,
            ),
          ),
          const Text(
              'Olen Janne Niinisalo Seinäjoelta! Tech-geek, motoristi, jne'),
        ],
      ),
    );
  }
}
