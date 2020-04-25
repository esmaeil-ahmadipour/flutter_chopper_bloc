import 'package:flutter/material.dart';
import 'package:flutterchopperbloc/ui/screens/home.dart';

class MyApp extends StatelessWidget {
  final String _title = "Chopper & BloC";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: _title),
    );
  }
}