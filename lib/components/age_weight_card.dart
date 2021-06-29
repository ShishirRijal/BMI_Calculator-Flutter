import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/utilities/constants.dart';

class AgeWeightCard extends StatelessWidget {
  final String title;
  final int value;
  final String unit;
  final Function increment;
  final Function decrement;
  AgeWeightCard(
      {this.title, this.value, this.unit, this.increment, this.decrement});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: kContainerDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: kLabelTextStyle,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$value',
                  style: kNumericTextStyle,
                ),
                Text(
                  unit,
                  style: kBaseTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundIconButton(
                  icon: Icons.remove,
                  onPressed: decrement,
                ),
                RoundIconButton(
                  icon: Icons.add,
                  onPressed: increment,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
