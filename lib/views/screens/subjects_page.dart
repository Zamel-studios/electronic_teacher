import 'package:electronic_teacher/models/book_model.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:electronic_teacher/views/widgets/subject_card.dart';
import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  final int gradeNumber;
  const SubjectsPage({super.key, required this.gradeNumber});

  @override
  Widget build(BuildContext context) {
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
                      children: const [
                        SubjectCard(
                          title: " الجغرافيا",
                          imagePath: "assets/social.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "التاريخ",
                          imagePath: "assets/history.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "اللغة العربية",
                          imagePath: "assets/arabic.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "الديانة الاسلامية",
                          imagePath: "assets/religion.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "الرياضيات",
                          imagePath: "assets/math.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "الفيزياء",
                          imagePath: "assets/physics.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "الكيمياء",
                          imagePath: "assets/chemistry.png",                          bookTypeEn: BookTypeEn.READ_BOOK,

                        ),
                        SubjectCard(
                          title: "الأحياء",
                          imagePath: "assets/biology.png",
                          bookTypeEn: BookTypeEn.READ_BOOK,
                        ),
                      ],
                    ),
                  ))
                ],
              ))),
    );
  }
}
