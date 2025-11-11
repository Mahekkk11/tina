import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heroanimation2/Screen1.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
      routes: {
        "/home": (context) => Screen1(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, "/home");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/img.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 5,
              ),
              SizedBox(height: 100)
            ],
          )
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
