import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class HeightSelectionCard extends StatelessWidget {
  final int height;
  final Function onChanged;
  HeightSelectionCard({this.height, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: kContainerDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("HEIGHT", style: kLabelTextStyle),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$height",
                  style: kNumericTextStyle,
                ),
                Text(
                  "cm",
                  style: kBaseTextStyle,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbColor: Colors.pinkAccent,
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 15.0,
                ),
                overlayShape: RoundSliderOverlayShape(
                  overlayRadius: 28.0,
                ),
                overlayColor: Colors.pinkAccent.withOpacity(0.3),
              ),
              child: Slider(
                value: height.toDouble(),
                min: 50,
                max: 250,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
