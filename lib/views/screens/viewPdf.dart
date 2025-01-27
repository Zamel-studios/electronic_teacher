import 'package:electronic_teacher/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdf extends StatelessWidget {
  final BookModel bookModel ;
    ViewPdf({Key? key, required this.bookModel}) : super(key: key);

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Text('${bookModel.book_name}'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // _pdfViewerKey.currentState?.reload();
            },
          )
        ],
      ),
      body: SfPdfViewer.asset(
        "${bookModel.book_path}",
        key: _pdfViewerKey,
      ),
    );
  }
}
