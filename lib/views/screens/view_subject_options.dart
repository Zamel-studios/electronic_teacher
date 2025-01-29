import 'package:electronic_teacher/models/book_model.dart';
import 'package:electronic_teacher/providers/download_pdf.dart';
import 'package:electronic_teacher/views/constants/font_styles.dart';
import 'package:electronic_teacher/views/screens/viewPdf.dart';
import 'package:electronic_teacher/views/widgets/awesome_button.dart';
import 'package:flutter/material.dart';

class ViewSubjectOptions extends StatelessWidget {
  final BookModel bookModel;
  final String image_path;
  const ViewSubjectOptions({required this.bookModel, required this.image_path});

  @override
  Widget build(BuildContext context) {
    // String subjectName = subject_name;
    // String imagePath = image_path;
    return SafeArea(
        child: Scaffold(
      body: Scaffold(
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
                const SizedBox(height: 100),
                Text(
                  bookModel.book_name,
                  style: formalStyle(),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  image_path,
                  height: 180,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AwesomeButton(
                        buttonText: "تحميل  \nالكتاب", onPressed: () {
                         downloadFileFromAssets('assets/pdfs/chemistry12.pdf', context );
                           
                        }),
                    const SizedBox(
                      width: 30,
                    ),
                    AwesomeButton(
                        buttonText: "قراءة  \nالكتاب", onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (c)=>ViewPdf(bookModel: bookModel,)));
                        }),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: AwesomeButton(
                      buttonText: "حلول  \nالكتاب", onPressed: () {}),
                )
              ],
            )),
      ),
    ));
  }
}
