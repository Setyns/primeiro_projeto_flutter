
import 'package:flutter/material.dart';

class Dificuldade extends StatelessWidget {

  final int DificuldadeLevel;

  const Dificuldade({
    required this.DificuldadeLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (DificuldadeLevel >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (DificuldadeLevel >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (DificuldadeLevel >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (DificuldadeLevel>= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (DificuldadeLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}