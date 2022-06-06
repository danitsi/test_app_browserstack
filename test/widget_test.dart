// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app_browserstack/main.dart';

void main() {
  testWidgets('recreating vertical viewport was given unbounded height issue', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());
    expect(find.text('Backup'), findsNothing);
    await tester.tap(find.byIcon(Icons.backup));
    await tester.pump();
    expect(find.text('Backup'), findsOneWidget);
  });
}
