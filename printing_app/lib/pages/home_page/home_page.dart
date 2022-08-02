import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:printing_app/services/printing/printing.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              // TODO printing Method Here
              Printer printerObj=Printer();
              printerObj.addPageToDoc();
              printerObj.printPDF();
            },
            child: DottedBorder(
              radius: Radius.circular(16),
              color: Colors.grey,
              borderType: BorderType.RRect,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.40,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_download_outlined, size: 48),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Touch To Print ")
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
