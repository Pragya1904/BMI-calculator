import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'BMI',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xff2D2E40),
      colorScheme: ColorScheme.dark(primary: Color(0xff2D2E40)).copyWith(secondary: Colors.pink,onSecondary: Colors.white),
    ),
    home: bmi(),
  ));
}
