import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({this.title, this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 75.0,
        color: Colors.pinkAccent,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
