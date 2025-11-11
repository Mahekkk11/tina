import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Registration Page",
            style: TextStyle(
                color: Colors.black,
                // backgroundColor: Colors.black,
                fontSize: 50),
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          constraints: BoxConstraints(

          ),
        ),
      ),
    );
  }
}
