import 'package:flutter/material.dart';

class GridviewEg extends StatelessWidget {
  GridviewEg({super.key});

  final List<Map<String, dynamic>> lst = [
    {'title': 'Item 1', 'Icon': Icons.person},
    {'title': 'Item 2', 'Icon': Icons.ac_unit},
    {'title': 'Item 3', 'Icon': Icons.access_alarm},
    {'title': 'Item 4', 'Icon': Icons.accessibility_new_outlined},
    {'title': 'Item 5', 'Icon': Icons.label},
    {'title': 'Item 6', 'Icon': Icons.local_activity_outlined},
    {'title': 'Item 7', 'Icon': Icons.lock},
    {'title': 'Item 8', 'Icon': Icons.account_tree},
    {'title': 'Item 9', 'Icon': Icons.account_balance_sharp},
    {'title': 'Item 10','Icon': Icons.adb},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(30)),
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(lst[index]['title']),
                  SizedBox(),
                  Icon(lst[index]['Icon'] ,),
                ],
              ),
              // child: Center(child: Text("$index")),
            ));
          }),
      // body: GridView.count(
      //   crossAxisCount: 4,
      //   children: List.generate(10, (index) => Card(
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
      //     color: Colors.blue,
      //     child:Center(child: Text("$index")) ,)),
      // ),
    );
  }
}
