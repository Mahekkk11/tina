import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'title': 'Mountain View', 'image': 'https://picsum.photos/400/300?1'},
    {'title': 'City Lake', 'image': 'https://picsum.photos/400/300?2'},
    {'title': 'Sunset Point', 'image': 'https://picsum.photos/400/300?3'},
    {'title': 'Mountain View 999', 'image': 'https://picsum.photos/400/300?4'},
  ];

  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation Example")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (builder, index) {
          final item = items[index];
          return Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              leading: Hero(
                tag: item['image']!,
                child: SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ClipOval(child: Image.network(item['image']!, fit: BoxFit.cover,)),
                ),
              ),
              title: Text(item['title']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2(item: item)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final Map<String, String> item;
  const Screen2({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Detail Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: item['image']!,
              child: Image.network(
                item['image']!,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(item['title']!),
          ],
        ),
      ),
    );
  }
}
