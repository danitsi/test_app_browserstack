import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "This page has a list view which have unbounded height",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Expected result is there is : Vertical viewport was given unbounded height. ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              key: const Key('ListView'),
              //shrinkWrap: true,
              itemCount: 100,
              itemBuilder: (context, index) => Text("Item $index"),
            ),
          ],
        ),
      ),
    );
  }
}
