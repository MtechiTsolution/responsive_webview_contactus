import 'package:flutter/material.dart';

import 'contactus/contactuspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter responsive web view',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application
        primarySwatch: Colors.blue,
      ),
      home: const ContactUs(),

    );

  }
}


