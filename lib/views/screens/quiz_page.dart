import 'package:electronic_teacher/views/constants/colors.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'اختبر نفسك',
            style: formalStyle(),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What is the capital of France?',
                style: formalStyleBlack(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const QuizOption(label: 'A) Madrid'),
              const QuizOption(label: 'B) Paris'),
              const QuizOption(label: 'C) Berlin'),
              const QuizOption(label: 'D) Rome'),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  // primary: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: Text(
                  'Submit',
                  style: formalStyleSmallerX3(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizOption extends StatelessWidget {
  final String label;

  const QuizOption({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: MaterialButton(
        onPressed: () {},
        color: Colors.green.shade100,
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "Cairo"),
        ),
      ),
    );
  }
}
