import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({this.result, this.remark, this.suggestion});
  final String result;
  final String remark;
  final String suggestion;
  void reset() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: kBackgroundColor,
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(25.0),
              decoration: kContainerDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    remark,
                    style: kRemarkTextStyle,
                  ),
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        "Normal BMI Range:",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 22.0,
                        ),
                      ),
                      Text(
                        "18.5 - 25 kg/m²",
                        style: kFeedbackTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      suggestion,
                      style: kFeedbackTextStyle,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Color(0xFF2F3253),
                    height: 75.0,
                    width: 250.0,
                    child: Text("SAVE RESULT", style: kFeedbackTextStyle),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            title: "RE-CALCULATE YOUR BMI",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
