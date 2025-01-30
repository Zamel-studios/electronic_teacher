import 'package:electronic_teacher/models/book_model.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:electronic_teacher/views/widgets/subject_card.dart';
import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  final int gradeNumber;
  const SubjectsPage({super.key, required this.gradeNumber});
  // HERE WE CHOOSE THE SUBJECTS DEPENDING ON TH STUDENT GRADE
  @override
  Widget build(BuildContext context) {
    int getGradeNumber = gradeNumber;
    return SafeArea(
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
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Text(
                    "قم باختيار المادة",
                    style: formalStyle(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        SubjectCard(
                          gradNumber: getGradeNumber,
                          title: " الجغرافيا",
                          imagePath: "assets/social.png",
                          // add gradeNumber
                        ),
                        SubjectCard(
                          gradNumber: getGradeNumber,
                          title: "التاريخ",
                          imagePath: "assets/history.png",
                        ),
                        SubjectCard(
                          gradNumber: getGradeNumber,
                          title: "اللغة العربية",
                          imagePath: "assets/arabic.png",
                        ),
                        SubjectCard(
                          gradNumber: getGradeNumber,
                          title: "الديانة الاسلامية",
                          imagePath: "assets/religion.png",
                        ),
                        SubjectCard(
                          title: "الرياضيات",
                          imagePath: "assets/math.png",
                          gradNumber: getGradeNumber,
                        ),
                        SubjectCard(
                          title: "الفيزياء",
                          imagePath: "assets/physics.png",
                          gradNumber: getGradeNumber,
                        ),
                        SubjectCard(
                          title: "الكيمياء",
                          imagePath: "assets/chemistry.png",
                          gradNumber: getGradeNumber,
                        ),
                        SubjectCard(
                          title: "الأحياء",
                          imagePath: "assets/biology.png",
                          gradNumber: getGradeNumber,
                        ),
                      ],
                    ),
                  ))
                ],
              ))),
    );
  }
}
