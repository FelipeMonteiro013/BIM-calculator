import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  Function onTap;
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: kBottmContainerColor,
        width: double.infinity,
        height: KbottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
