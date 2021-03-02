import 'package:flutter/material.dart';
import 'color.dart';

class HerderContainer extends StatelessWidget {
  var text = "Login";

  HerderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [pinkColors, pinkLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter
          ),
          borderRadius:
          BorderRadius.only(bottomLeft: Radius.circular(90.0))
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Center(
            // child: Image.asset('assets/images/logo02.png'),
          ),
        ],
      ),
    );
  }
}
