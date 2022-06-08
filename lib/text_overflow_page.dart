import 'dart:math';

import 'package:flutter/material.dart';

class TextOverflowPage extends StatelessWidget {
  const TextOverflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Overflow Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "This page has a text view which have  RenderFlex overflowed pixels on the right",
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
              "Expected result is there is : A RenderFlex overflowed by some pixels on the right.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "The screen width of this device is ${MediaQuery.of(context).size.width} and The screen hight of this device is ${MediaQuery.of(context).size.width}",
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
