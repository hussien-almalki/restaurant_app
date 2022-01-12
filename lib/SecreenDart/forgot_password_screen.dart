// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_app/sharedWidget/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController forGotPasswordController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 100, bottom: 8),
                width: double.infinity,
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff747474),
                  ),
                ),
              ),
              Image.network(
                "https://raw.githubusercontent.com/hussien-almalki/firstpro/main/web/reslog.png",
                scale: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 100,
                ),
                child: TextField(
                  controller: forGotPasswordController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Email ID / Phone Number",
                    hintStyle: TextStyle(
                      color: Color(0xff939393),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xfff26d7d),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff747474),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 16,
                  right: 16,
                ),
                child: Container(
                  width: double.infinity,
                  child: GradientButton(
                    height: 40,
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
