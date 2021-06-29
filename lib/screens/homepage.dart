import 'package:bmi_calculator/components/age_weight_card.dart';
import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:bmi_calculator/components/calculator.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/height_selection_card.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 150;
  int age = 20;
  int weight = 60;
  Color maleColor = Colors.grey;
  Color femaleColor = Colors.grey;

  void updateCard(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleColor = Colors.white;
      femaleColor = Colors.grey;
    } else {
      femaleColor = Colors.white;
      maleColor = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                //Gender Selection
                Expanded(
                  child: Row(
                    children: [
                      GenderCard(
                        title: "MALE",
                        icon: Icons.male,
                        textColor: maleColor,
                        iconColor: maleColor,
                        onPressed: () {
                          setState(() {
                            updateCard(Gender.male);
                          });
                        },
                      ),
                      SizedBox(width: 10.0),
                      GenderCard(
                        title: "FEMALE",
                        icon: Icons.female,
                        onPressed: () {
                          setState(() {
                            updateCard(Gender.female);
                          });
                        },
                        textColor: femaleColor,
                        iconColor: femaleColor,
                      ),
                    ],
                  ),
                ),
                //Height Selection
                HeightSelectionCard(
                  height: height,
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  },
                ),
                //Weight and Age Selecction
                Expanded(
                  child: Row(
                    children: [
                      //Weight Card
                      AgeWeightCard(
                          title: "WEIGHT",
                          value: weight,
                          unit: "kg",
                          increment: () {
                            setState(() {
                              weight++;
                            });
                          },
                          decrement: () {
                            setState(() {
                              weight--;
                            });
                          }),
                      SizedBox(width: 10.0),
                      AgeWeightCard(
                          title: "AGE",
                          value: age,
                          unit: "yr",
                          increment: () {
                            setState(() {
                              age++;
                            });
                          },
                          decrement: () {
                            setState(() {
                              age--;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        ///Calculate Button
        BottomContainer(
          title: "CALCULATE YOUR BMI",
          onPressed: () {
            print("Height = $height");
            print("Weight = $weight");
            Calculator calc = new Calculator(height: height, weight: weight);
            print("BMI = ${calc.getResult()}");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultScreen(
                  result: calc.getResult(),
                  remark: calc.getRemark(),
                  suggestion: calc.getSuggestion(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
