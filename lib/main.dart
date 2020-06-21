import 'package:flutter/material.dart';
import 'screens/screen22.dart';
import 'screens/myhomepage.dart';

void main() {
  runApp(ToothApp());
}

class ToothApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Tooth Identification',
      home: MyHomePage(title: 'Tooth Identification'),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(title: 'Tooth Identification'),
        Screen22.id: (context) => Screen22(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
