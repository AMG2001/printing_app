import 'package:flutter/material.dart';
import 'package:printing_app/pages/home_page/home_page.dart';


void main() => runApp(const PrintingApp());

class PrintingApp extends StatelessWidget {
  const PrintingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Printing_App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}