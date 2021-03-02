import 'package:flutter/material.dart';
import 'package:project_token_travel/Login/pages/regis_page.dart';
import 'package:project_token_travel/widgets/botton_navbar.dart';
import 'package:project_token_travel/widgets/btn_widget.dart';
import 'package:project_token_travel/widgets/herder_container.dart';
import 'package:project_token_travel/widgets/menu_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30.0),
        child: Column(
          children: [
            HerderContainer("เข้าสู่ระบบ"),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                  child: Column(
                    children: <Widget>[
                      _textInput(hint: "   ชื่อผู้ใช้งาน", icon: Icons.email),
                      _textInput(hint: "   รหัสผ่าน", icon: Icons.vpn_key),
                      Container(
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        alignment: Alignment.centerRight,
                        child: Text("ลืมรหัสผ่าน ?"),
                      ),
                      Expanded(
                        child: Center(
                          child: ButtonWidget(
                            onClick: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BottonNavBar()));
                            },
                            btnText: "เข้าสู่ระบบ",
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "ยังไม่เป็นสมาชิก ? ",
                            ),
                            FlatButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                                },
                                child: Text(
                                  "สมัครสมาชิก",
                                  style: TextStyle(
                                      color: Colors.pink
                                  ),
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
