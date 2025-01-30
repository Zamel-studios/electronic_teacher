import 'package:electronic_teacher/views/constants/colors.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:flutter/material.dart';

class AwesomeButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const AwesomeButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Ensure the Material widget is transparent
      child: Ink(
        decoration: BoxDecoration(
          color: mainColor, // Button color
          shape: BoxShape.circle, // Circular shape
          border: Border.all(
            color:white, // Border color
            width: 2.0, // Border width
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(1000), // Ensures the splash effect is circular
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(20.0), // Adjust padding to control button size
            child: Text(
              buttonText,
              style: formalStyleSmaller()
            ),
          ),
        ),
      ),
    );
  }
}
