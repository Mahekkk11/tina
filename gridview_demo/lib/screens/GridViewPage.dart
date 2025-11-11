import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
   GridViewPage({super.key});

final List<Map<String, dynamic>> items = [
  {'title':'item1','icon':Icons.person},
  {'title':'item2','icon':Icons.person},
  {'title':'item3','icon':Icons.person},
  {'title':'item4','icon':Icons.person},
  {'title':'item5','icon':Icons.person},
  {'title':'item6','icon':Icons.person},
  {'title':'item7','icon':Icons.person},
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: GridView.count(
      //   crossAxisCount: 5,
      //   children: List.generate(10, (index)=>
      //       Card(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10)
      //         ),
      //         color: Colors.amberAccent,
      //         child: Center(
      //             child: Text("${index+1}")
      //         ),
      //       )
      //   ),
      // ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: items.length,
          itemBuilder: (context, index){
            return GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(items[index]['icon']),
                    SizedBox(),
                    Text(items[index]['title']),
                  ],
                )
              ),
            );
          }),
    );
  }
}
