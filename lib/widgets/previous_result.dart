import 'package:flutter/material.dart';

class PreviousResult extends StatelessWidget {
  final String text;

  const PreviousResult({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFF919192),
          ),
        ),
      ],
    );
  }
}
