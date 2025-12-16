import 'package:bmi_app/home_screen.dart';
import 'package:flutter/material.dart';

class Bmiapp extends StatelessWidget{
  const Bmiapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );

  }
}