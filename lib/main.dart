import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/homepage.dart';

void main() {
  runApp(
    BMICalculator(),
  );
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: kBackgroundColor,
          title: Center(
            child: Text("BMI CALCULATOR"),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
