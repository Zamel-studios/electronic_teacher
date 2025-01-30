import 'package:electronic_teacher/views/constants/colors.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:electronic_teacher/views/widgets/grid_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/app_green_bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align children at the start of the main axis
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Space between the elements
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),

                        margin: const EdgeInsets.only(
                            left: 10, bottom: 10), // Left and bottom margin
                        child: Row(
                          children: [
                            Icon(Icons.grid_view, color: white, size: 40),
                            SizedBox(width: 10), // Spacing between icons
                            Icon(Icons.search, color: white, size: 40),
                          ],
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        //   color: Color.fromARGB(111, 41, 40, 40),
                        // ),
                        padding: const EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            right: 10,
                            bottom:
                                10), // Right and bottom padding for alignment
                        child: Icon(Icons.person, color: white, size: 40),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "يرجى اختيار صفك",
                    style: formalStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    padding: const EdgeInsets.all(16),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: <Widget>[
                      gridItem(
                          context: context,
                          nav: 'Screen1',
                          image: 'assets/grade7.png',
                          title: '',
                          gradeNumber: 7),
                      gridItem(
                          context: context,
                          nav: 'Screen2',
                          image: 'assets/grade8.png',
                          title: '',
                          gradeNumber: 8),
                      gridItem(
                          context: context,
                          nav: 'Screen3',
                          image: 'assets/grade9.png',
                          title: '',
                          gradeNumber: 9),
                      gridItem(
                          context: context,
                          nav: 'Screen3',
                          image: 'assets/grade10.png',
                          title: '',
                          gradeNumber: 10),
                      gridItem(
                          context: context,
                          nav: 'Screen3',
                          image: 'assets/grade11.png',
                          title: '',
                          gradeNumber: 11),
                      gridItem(
                          context: context,
                          nav: 'Screen3',
                          image: 'assets/grade12.png',
                          title: '',
                          gradeNumber: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
