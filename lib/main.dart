import 'package:flutter/material.dart';
import 'package:quizzz/screens/home_screen.dart';

void main() {
  runApp(const QuizApplication());
}

class QuizApplication extends StatefulWidget {
  const QuizApplication({super.key});

  @override
  State<QuizApplication> createState() => _QuizApplicationState();
}

class _QuizApplicationState extends State<QuizApplication> {
  @override
  Widget build(BuildContext context) {
    return getMaterial();
  }
}

Widget getMaterial(){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'dana'
    ),
    home: HomeScreen(),
  );
}
