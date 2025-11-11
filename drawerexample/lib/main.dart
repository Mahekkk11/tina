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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Menu 1', 'icon': Icons.menu},
    {'title': 'Menu 2', 'icon': Icons.menu_open},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(menuItems[selectedIndex]['title'])),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 60,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            ...menuItems.asMap().entries.map((entry) {
              int index = entry.key;
              var item = entry.value;
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['title']),
                selected: index == selectedIndex,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  Navigator.pop(context);
                },
              );
            }),
          ],
        ),
      ),
      body: _getMenuScreen(selectedIndex),
    );
  }

  Widget _getMenuScreen(int index) {
    switch (index) {
      case 0:
        return Menu1Content();
      default:
        return Menu2Content();
    }
  }
}

class Menu1Content extends StatelessWidget {
  const Menu1Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, size: 60, color: Colors.blue),
              Icon(Icons.star, size: 60.0, color: Colors.orange),
              Icon(Icons.favorite, size: 60.0, color: Colors.green),
            ],
          ),
          SizedBox(height: 90),
          RichText(
            text: TextSpan(
              text: "Hello ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "World ",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                  children: [
                    TextSpan(
                      text: ".......",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Menu2Content extends StatelessWidget {
  const Menu2Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home),
          SizedBox(height: 20),
          Text('Menu 2 Content'),
        ],
      ),
    );
  }
}