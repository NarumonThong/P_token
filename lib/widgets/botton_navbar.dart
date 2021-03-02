import 'package:flutter/material.dart';

class BottonNavBar extends StatefulWidget {
  @override
  _BottonNavBarState createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
    // return Container(
    //   color: Colors.greenAccent,
    //   height: 56,
    //   width: MediaQuery.of(context).size.width,
    // );
  }
}
