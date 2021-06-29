import 'package:bmi_calculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String title;
  final Function onPressed;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  GenderCard(
      {this.title, this.onPressed, this.icon, this.textColor, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(7.0),
            ),
          ),
          margin: EdgeInsets.only(bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 100, color: iconColor),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
