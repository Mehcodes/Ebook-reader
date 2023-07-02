import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class BookViewer extends StatefulWidget {
  const BookViewer({super.key, required this.path});
  final String? path;

  @override
  State<BookViewer> createState() => _BookViewerState();
}

class _BookViewerState extends State<BookViewer> {
  late PdfController pdfController;

  loadController() {
    pdfController = PdfController(
      document: PdfDocument.openFile(widget.path.toString()),
    );
    Future.delayed(Duration(seconds: 2), () {
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    loadController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book name"),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.center,
            child: Text(
              pdfController.pagesCount == null
                  ? ''
                  : "Page ${pdfController.pagesCount}",
            ),
          )
        ],
      ),

      // body: SfPdfViewer.asset("assets/books/tecno.pdf")
      body: Center(
        child: PdfView(
          controller: pdfController,
          scrollDirection: Axis.vertical,
          pageSnapping: true,
          
        ),
      ),
    );
  }
}
