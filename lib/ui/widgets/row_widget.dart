import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.play_circle,
          color: Colors.white,
        ),
        Text(
          "23 Dars",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
