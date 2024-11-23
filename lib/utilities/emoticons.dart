import 'package:flutter/material.dart';

enum Feeling { bad, fine, well, excellent }

class Emoticons extends StatelessWidget {
  const Emoticons({required this.feeling, super.key});
  final Feeling feeling;

  @override
  Widget build(BuildContext context) {
    IconData emoticonFace;
    switch (feeling) {
      case Feeling.bad:
        emoticonFace = Icons.sentiment_very_dissatisfied;
        break;
      case Feeling.fine:
        emoticonFace = Icons.sentiment_neutral;
        break;
      case Feeling.well:
        emoticonFace = Icons.sentiment_satisfied;
        break;
      case Feeling.excellent:
        emoticonFace = Icons.sentiment_very_satisfied;
        break;
    }
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Icon(
              emoticonFace,
              size: 28,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          feeling.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  String capitalize(String string) {
    return string.isNotEmpty
        ? string[0].toUpperCase() + string.substring(1)
        : '';
  }
}
