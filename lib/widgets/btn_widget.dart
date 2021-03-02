import 'package:flutter/material.dart';
import 'color.dart';

class ButtonWidget extends StatelessWidget {
  var btnText = "";
  var onClick;

  ButtonWidget({this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width:  double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [pinkColors, pinkLightColors],
                end: Alignment.centerLeft,
                begin: Alignment.centerRight
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(100.0))
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0
          ),
        ),
      ),
    );
  }
}
