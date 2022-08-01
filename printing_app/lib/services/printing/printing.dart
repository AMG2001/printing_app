import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Printer {
  final doc = pw.Document();
  void addPageToDoc() async {
    final font = await fontFromAssetBundle(
        'assets/fonts/NotoSansArabic-VariableFont_wdth,wght.ttf');
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
              child: pw.Directionality(
            textDirection: pw.TextDirection.rtl,
            child: pw.Text(
              "السلام عليكم",
              style: pw.TextStyle(
                font: font,
                fontSize: 48.0,
              ),
            ),
          )); // Center
        },
      ),
    );
  }

  void printPDF() async {
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
