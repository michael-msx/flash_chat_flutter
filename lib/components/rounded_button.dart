import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final VoidCallback btnOnPressed;

  RoundedButton(
      {required this.btnColor,
      required this.btnText,
      required this.btnOnPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: btnOnPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
