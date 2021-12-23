import 'package:flutter/material.dart';
import 'package:plant_disease_detector/src/home_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detect diseases',
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'SFRegular'
        ),
      home: const Home(),
    );
  }
}
