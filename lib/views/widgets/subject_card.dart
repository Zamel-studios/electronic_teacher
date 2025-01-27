import 'package:electronic_teacher/models/book_model.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:flutter/material.dart';

import '../screens/view_subject_options.dart';

class SubjectCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final BookTypeEn bookTypeEn;
  const SubjectCard({
    Key? key,
    required this.title,
    this.imagePath = 'assets/teacher.png',
    required this.bookTypeEn, // Make sure to add your actual image path
  }) : super(key: key);

  void pushToViewSubject(context, String path) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ViewSubjectOptions(
                  bookModel: BookModel(path, title, bookTypeEn),
                  image_path: imagePath,
                )));
                print("\n ${path}");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (title) {
          case "الجغرافيا":
            pushToViewSubject(context, "assets/pdfs/chemistry12.pdf");

            break;
          case "التاريخ":
            pushToViewSubject(context, "assets/pdfs/religion12.pdf");
            break;
          case "الكيمياء":
            pushToViewSubject(context, "assets/pdfs/chemistry12.pdf");

            break;
          default:
        }
      },
      child: Card(
        color: const Color.fromARGB(135, 215, 246, 179),
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                height: 150,
                width: 150, // Adjust size according to your needs
              ),
              Expanded(
                child: Text(
                  title,
                  style: formalStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
