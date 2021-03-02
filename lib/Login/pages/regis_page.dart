import 'package:flutter/material.dart';
import 'package:project_token_travel/widgets/btn_widget.dart';
import 'package:project_token_travel/widgets/herder_container.dart';

enum SingingCharacter { lafayette, jefferson }

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: <Widget>[
            HerderContainer("สมัครสมาชิก"),
            Expanded(
                flex: 1,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          _textInput(hint: "   ชื่อจริง", icon: Icons.person_add),
                          _textInput(hint: "   นามสกุล", icon: Icons.person),
                          _textInput(hint: "   อีเมล", icon: Icons.email),
                          _textInput(hint: "   เบอร์โทรศัพท์", icon: Icons.phone),
                          _textInput(hint: "   ชื่อผู้ใช้งาน", icon: Icons.person_pin),
                          _textInput(hint: "   รหัสผ่าน", icon: Icons.vpn_key),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 35.0),
                                  child: Text(
                                    'คุณสมัครโดยมีคนแนะนำไหม',
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                RadioListTile<SingingCharacter>(
                                  title: const Text('มี / สมัครด้วย link แนะะนำ'),
                                  value: SingingCharacter.lafayette,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                                RadioListTile<SingingCharacter>(
                                  title: const Text('ไม่มี'),
                                  value: SingingCharacter.jefferson,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: Center(
                              child: ButtonWidget(
                                btnText: "สมัครสมาชิก",
                                onClick: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "มีสมาชิกแล้ว ? ",
                                        style: TextStyle(
                                            color: Colors.black
                                        )
                                    ),
                                    TextSpan(
                                        text: "เข้าสู่ระบบ",
                                        style: TextStyle(
                                            color: Colors.pink
                                        )
                                    )
                                  ]
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
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
