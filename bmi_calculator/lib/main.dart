import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'BMI',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch( primarySwatch: Color(0xff2D2E40)),
      scaffoldBackgroundColor: Colors.green,
    ),
    home: bmi(),
  ));
}

