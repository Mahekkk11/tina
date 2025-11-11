import 'package:flutter/material.dart';

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
      home: Tabbar_eg(),
    );
  }
}

class Tabbar_eg extends StatelessWidget {
  const Tabbar_eg({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.favorite_outlined), text: "Favourite"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home", style: TextStyle(fontSize: 100))),
            Center(child: Text("Favourite ", style: TextStyle(fontSize: 100))),
            Center(child: Text("Profile", style: TextStyle(fontSize: 100))),
          ],
        ),
      ),
    );
  }
}
