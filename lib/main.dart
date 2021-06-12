import 'package:flutter/material.dart';
import 'package:mybook_project/book_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBook',
      theme: ThemeData(
        primaryColorDark: Colors.deepOrange,
      ),
      home: BookScreen(),
    );
  }
}