import 'package:flutter/material.dart';
import 'package:mentalhealth_app/pages/home_page.dart';

void main() {
  runApp(const MentalHealthApp());
}

class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        name: 'Stacy',
      ),
    );
  }
}
