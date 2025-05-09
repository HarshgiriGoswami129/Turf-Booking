import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(PdfAnnotationPage());
}

class PdfAnnotationPage extends StatefulWidget {
  @override
  State<PdfAnnotationPage> createState() => _PdfAnnotationPageState();
}

class _PdfAnnotationPageState extends State<PdfAnnotationPage> {
  late PdfViewerController controller;

  @override
  void initState() {
    super.initState();
    controller = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Annotations'),
        actions: [
          IconButton(
            icon: Icon(Icons.highlight),
            onPressed: () {
              controller.annotationMode = PdfAnnotationMode.highlight;
            },
          ),
          IconButton(
            icon: Icon(Icons.format_underline),
            onPressed: () {
              controller.annotationMode = PdfAnnotationMode.underline;
            },
          ),
          IconButton(
            icon: Icon(Icons.draw),
            onPressed: () {
              controller.annotationMode = PdfAnnotationMode.strikethrough;
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
        controller: controller,
      ),
    );
  }
}
