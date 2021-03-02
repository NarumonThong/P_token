import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Login/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ปิด rotate
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
    );
    return MaterialApp(
      home: SplasPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

