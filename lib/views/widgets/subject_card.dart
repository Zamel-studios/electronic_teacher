import 'package:electronic_teacher/models/book_model.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:flutter/material.dart';

import '../screens/view_subject_options.dart';

class SubjectCard extends StatelessWidget {
  final String title;
  final String imagePath;
  // final BookTypeEn bookTypeEn;
  final int gradNumber;
  const SubjectCard({
    Key? key,
    required this.title,
    this.imagePath = 'assets/teacher.png',
    required this.gradNumber, // Make sure to add your actual image path
  }) : super(key: key);

  void pushToViewSubject(context, String path) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ViewSubjectOptions(
                  bookModel: BookModel(path, title, gradNumber),
                  image_path: imagePath,
                )));
    print("\n ${path}");
  }

  void handleSubjectSelection(String subject, BuildContext context) {
    String ASSET_PATH = "assets/pdfs/g$gradNumber";
    switch (subject) {
      case "الجغرافيا":
        pushToViewSubject(context, "$ASSET_PATH/geography/");
        break;
      case "التاريخ":
        pushToViewSubject(context, "$ASSET_PATH/history/");
        break;
      case "الكيمياء":
        pushToViewSubject(context, "$ASSET_PATH/chemistry/");
        break;
      case "الفيزياء":
        pushToViewSubject(context, "$ASSET_PATH/physics/");
        break;
      case "الرياضيات":
        pushToViewSubject(context, "$ASSET_PATH/math/");
        break;
      case "الأحياء":
        pushToViewSubject(context, "$ASSET_PATH/biology/");
        break;
      case "اللغة العربية":
        pushToViewSubject(context, "$ASSET_PATH/arabic/");
        break;
      case "اللغة الإنجليزية":
        pushToViewSubject(context, "$ASSET_PATH/english/");
        break;
      case "الديانة الاسلامية":
        pushToViewSubject(context, "$ASSET_PATH/religion/");
        break;
      case "الفلسفة":
        pushToViewSubject(context, "$ASSET_PATH/phylosophy/");
        break;
      // case "علم الاجتماع":
      //   pushToViewSubject(context, "$ASSET_PATH/");
      //   break;
      default:
        print('Subject not found or not applicable for the 12th grade.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handleSubjectSelection(title, context);
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
