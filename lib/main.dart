import 'package:flutter/material.dart';
import 'package:test_app_browserstack/listview_page.dart';
import 'package:test_app_browserstack/text_overflow_page.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewPage()),
              );
            },
            child: const Text("List View Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextOverflowPage()),
              );
            },
            child: const Text("Text Overflow page"),
          ),
        ],
      ),
    );
  }
}
