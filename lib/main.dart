import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacram/insta_home.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(titleMedium: TextStyle(color: Colors.black,fontFamily: "AvenyT")),
        textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black))
      ),
     home: InstaHome(),
    );
  }
}


