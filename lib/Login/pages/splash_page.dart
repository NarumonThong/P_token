import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_token_travel/widgets/color.dart';

import 'login_page.dart';

class SplasPage extends StatefulWidget {
  @override
  _SplasPageState createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [pinkColors, pinkLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter
          ),
        ),
        child: Center(
          // child: Image.asset('assets/images/logo02.png'),
        ),
      ),
    );
  }
}

