// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//               ***           ___
//              (o o)         (o o)
//          ooO--(_)--Ooo-ooO--(_)--Ooo-
// "    __________________________________
// "    Hussien Almalki ()
// "    https://www.pioneersacademy.com/
// "    https://github.com/hussien-almalki
// "
// "
// " A customized for Flutter (https://flutter.dev/)

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 250, bottom: 8),
            width: double.infinity,
            child: Text(
              "SOON",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 110,
                color: Color(0xfff26d7d),
              ),
            ),
          ),
          Image.network(
            "https://raw.githubusercontent.com/hussien-almalki/firstpro/main/web/reslog.png",
            scale: 3,
          ),
        ],
      ),
    );
  }
}
