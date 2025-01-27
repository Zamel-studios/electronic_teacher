import 'package:electronic_teacher/views/constants/colors.dart';
import 'package:electronic_teacher/views/screens/subjects_page.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

Widget gridItem(
    {required context,
    required String nav,
    required String image,
    required String title,
    required int gradeNumber}) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubjectsPage(
                    gradeNumber: gradeNumber,
                  )));
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: white, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            Positioned(
              // Updated to use Positioned.fill
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover, // Updated to BoxFit.cover
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0, // Positioned at the bottom of the container
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(
                    10), // Added padding for better text visibility
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Added a gradient to ensure text is readable
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                      const Color.fromARGB(0, 13, 198, 53),
                    ],
                  ),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
