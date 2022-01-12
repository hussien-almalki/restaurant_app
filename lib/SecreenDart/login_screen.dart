// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:restaurant_app/SecreenDart/forgot_password_screen.dart';
import '../sharedWidget/custom_button.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({Key? key}) : super(key: key);

  @override
  _LoginScreanState createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
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
                  "Login",
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
                  top: 25,
                ),
                child: TextField(
                  controller: userNameController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Username",
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
                  left: 16,
                  right: 16,
                  top: 25,
                ),
                child: TextField(
                  obscureText: isHidden,
                  controller: passwordController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      icon: const Icon(Icons.visibility),
                    ),
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
                  top: 20,
                  left: 16,
                  right: 16,
                ),
                child: Container(
                  width: double.infinity,
                  child: GradientButton(
                    height: 40,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text("        Google        ",
                          style: TextStyle(color: Colors.red))),
                  Container(
                    color: Color(0xff747474),
                    width: 0.5,
                    height: 13,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("        Facebook        ",
                          style: TextStyle(color: Color(0xff3884C6)))),
                  Container(
                    color: Color(0xff747474),
                    width: 0.5,
                    height: 13,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("        iCloud        ")),
                ],
              ),
              //Expanded(child: Container()),
              const SizedBox(
                height: 270,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen(),),)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 145,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
