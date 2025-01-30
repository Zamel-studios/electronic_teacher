import 'package:electronic_teacher/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

enum ActionTypeEn { READ_BOOK, READ_SOLUTIONS }

class ViewPdf extends StatelessWidget {
  final BookModel bookModel;
  final ActionTypeEn actionType;
  ViewPdf({Key? key, required this.bookModel, required this.actionType})
      : super(key: key);

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${bookModel.book_name}'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // _pdfViewerKey.currentState?.reload();
            },
          )
        ],
      ),
      //    bookModel.book_path = "${bookModel.book_path}solutions.pdf";

      body: SfPdfViewer.asset(
        actionType == ActionTypeEn.READ_BOOK
            ? "${bookModel.book_path}book.pdf"
            : "${bookModel.book_path}solutions.pdf",
        key: _pdfViewerKey,
      ),
    );
  }
}
