import 'package:flutter/material.dart';
import 'package:second/pages/Dashboard.dart';

class Listview extends StatelessWidget {
  Listview({super.key});

  final List<Map<String, String>> items = [
    {
      'image':'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
      'title':'Row1',
      'subtitle':'subrow1'
    },
    {
      'image':'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
      'title':'Row2',
      'subtitle':'subrow2'
    },
    {
      'image':'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
      'subtitle':'subrow3'
    },
    {
      'image':'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
      'title':'Row4',
      'subtitle':'subrow4'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index)  {
            final item = items[index];
            return Card(child:
            ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(item['image']!),
                backgroundColor: Colors.black,
              ),
              title: Text(item['title']?? "dummy"),
              subtitle: Text(item['subtitle']!),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(strMessage: item['name']!)));
              },
            )
            );
          }),
    );
  }
}
