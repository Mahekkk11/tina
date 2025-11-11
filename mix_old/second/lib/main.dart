import 'package:flutter/material.dart';
import 'package:second/HomePage.dart';
import 'package:second/pages/LoginPage.dart';
import 'package:second/gridview_eg/GridView_eg.dart';
import 'package:second/pages/Dashboard.dart';
import 'package:second/pages/Listview.dart';

import 'mypage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: GridviewEg(),

    );
  }
}


