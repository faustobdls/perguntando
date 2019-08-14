import 'package:flutter/material.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

import 'pages/page_login/page_login_page.dart';
import 'pages/page_register/page_register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var itemsActionBar = [
    FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      onPressed: () {},
      child: Icon(Icons.add),
    ),
    FloatingActionButton(
      backgroundColor: Colors.indigoAccent,
      onPressed: () {},
      child: Icon(Icons.camera),
    ),
    FloatingActionButton(
      backgroundColor: Colors.orangeAccent,
      onPressed: () {},
      child: Icon(Icons.card_giftcard),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.network(
              "https://www.fluttertalks.com.br/images/hero-area/bg2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0xffcc000000),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          PageView.builder(
            itemCount: 2,
            itemBuilder: (_, index) {
              switch (index) {
                case 0:
               return   PageLoginPage();
                  break;
                case 1:
                  return PageRegisterPage();
                  break;
                default:
              }
            },
          ),
          Positioned(
              top: 0,
              left: -60,
              child: CircleFloatingButton(
                position: Position.top,
                type: CircleType.quarterPart,
                items: itemsActionBar,
                buttonColor: Colors.transparent,
                buttonIcon: Icons.no_encryption,
                duration: Duration(milliseconds: 500),
              ))
        ],
      ),
    );
  }
}
