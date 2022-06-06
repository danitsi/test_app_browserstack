import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: Center(
child: Column(
  children: [
    Text('Header'),
    ListView(
     children: [
       ListTile(
         leading: Icon(Icons.map),
         title: Text('Map'),
       ),
       ListTile(
         leading: Icon(Icons.train),
         title: Text('Train'),
       ),
       ListTile(
         leading: Icon(Icons.access_alarm),
         title: Text('Alarm'),
       ),
       ListTile(
         leading: Icon(Icons.add_a_photo),
         title: Text('Photo'),
       ),
       ListTile(
         leading: Icon(Icons.ac_unit),
         title: Text('Ac Unit'),
       ),
       ListTile(
         leading: Icon(Icons.airplay),
         title: Text('Airplay'),
       ),
       ListTile(
         leading: Icon(Icons.backup),
         title: Text('Backup'),
       ),
     ],
    )
  ],
),
      ),
      )
    );
  }
}
