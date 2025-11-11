// import 'package:flutter/material.dart';
//
// class Dashboard extends StatefulWidget {
//   final String strMessage;
//
//   const Dashboard({super.key, required this.strMessage});
//
//   @override
//   State<Dashboard> createState() => _DashboardState();
// }
//
// class _DashboardState extends State<Dashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dashboard"),
//         leading: IconButton(onPressed: () {
//           Navigator.pop(context);
//         }, icon: Icon(Icons.keyboard_backspace)),
//       ),
//       body: Column(
//         children: [
//           Table(
//           children: [
//             TableRow(
//               children: [Text("Hello")]
//             ),
//             TableRow(
//                 children: [Text("Hello")]
//             ),
//             TableRow(
//                 children: [Text("Hello")]
//             ),
//             TableRow(
//                 children: [Text("Hello")]
//             ),
//             TableRow(
//                 children: [Text("Hello")]
//             ),
//             TableRow(
//                 children: [Text("Hello")]
//             ),
//           ],
//           ),
//         ],
//       )
//     );
//   }
// }
//
import 'package:flutter/material.dart';

import 'Listview.dart';


class Dashboard extends StatefulWidget {
  final String strMessage;

  const Dashboard({super.key, required this.strMessage});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> items = [];

  void _addNewItem(){
    setState(() {
      items.add("${widget.strMessage} Row: ${items.length +1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace)
        ),
        actions: [
          IconButton(
              onPressed: () {
                _addNewItem();
              },
              icon: Icon(Icons.add)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Table(
            border: TableBorder.symmetric(
                inside: BorderSide(color: Colors.blue),
                outside: BorderSide(color: Colors.black)
            ),
            children: items
                .map((row) => TableRow(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Builder) => Listview()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(row),
                ),
              )
            ]))
                .toList()
        ),
      ),
    );
  }
}
