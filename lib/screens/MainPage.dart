import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("syweb"),),
    body: Center(
      child: Image.asset("assets/logo.png"),
    ),
    );
  }
}
