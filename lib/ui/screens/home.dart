import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  final String _helloWorld = "Hello World!";

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(_helloWorld),
      ),
    );
  }
}
