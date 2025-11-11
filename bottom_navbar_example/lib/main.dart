import 'package:bottom_navbar_example/screens/home_screen.dart';
import 'package:bottom_navbar_example/screens/profile_screen.dart';
import 'package:bottom_navbar_example/screens/settings_screen.dart';
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
      home: const BottomNavbarExample(),
    );
  }
}


class BottomNavbarExample extends StatefulWidget {
  const BottomNavbarExample({super.key});

  @override
  State<BottomNavbarExample> createState() => _BottomNavbarExampleState();
}

class _BottomNavbarExampleState extends State<BottomNavbarExample> {

  //selected Index
  int currentIndex = 0;

  //Titles
  final List<String> _titles = ['Home','Settings','Profile'];

  //Screens
  final List<Widget> _screens = [HomeScreen(),SettingsScreen(),ProfileScreen()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[currentIndex]),
        centerTitle: true,
      ),
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')],
        currentIndex: currentIndex,
        onTap: (index){
            setState(() {
              currentIndex = index;
            });
        },
      ),
    );
  }
}
