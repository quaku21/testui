import 'package:flutter/material.dart';

class SolentSpark extends StatelessWidget {
  const SolentSpark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/',
            fit: BoxFit.cover,
          ),
          MaterialButtonClass()
        ],
      ),
    );
  }
}
