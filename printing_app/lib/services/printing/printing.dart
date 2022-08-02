import 'dart:html';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Printer {
  final doc = pw.Document();
  void addPageToDoc() {
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text('My First Printed PDF',
                style: pw.TextStyle(fontSize: 48)),
          ); // Center
        },
      ),
    );
  }

  void printPDF() async {
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
