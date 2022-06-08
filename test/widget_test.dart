import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app_browserstack/main.dart' as mainapp;

void main() {
  testWidgets('test script for  list View unbounded height given error ',
      (WidgetTester tester) async {
    mainapp.main();

    await tester.pumpAndSettle();

    expect(find.text('List View Page'), findsOneWidget);

    await tester.tap(find.text('List View Page'));
    await tester.pump();

    expect(
        find.byKey(const Key('ListView'), skipOffstage: false), findsWidgets);
  });

  testWidgets('test script for  text overflow ', (WidgetTester tester) async {
    mainapp.main();
    await tester.pumpWidget(
      Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(width: 10000000),
        ],
      ),
    );
  });
}
