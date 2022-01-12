// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_app/sharedWidget/custom_button.dart';

import 'login_screen.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  TextEditingController createUserNameController = TextEditingController();
  TextEditingController createEmailAddressController = TextEditingController();
  TextEditingController createMobileController = TextEditingController();
  TextEditingController createPasswordController = TextEditingController();

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
                  "Register",
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
                  top: 15,
                ),
                child: TextField(
                  controller: createUserNameController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Name",
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
                  top: 10,
                ),
                child: TextField(
                  controller: createEmailAddressController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
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
                  top: 10,
                ),
                child: TextField(
                  controller: createMobileController,
                  style: TextStyle(
                    color: Color(0xff747474),
                    fontSize: 16,
                    //decoration:TextDecoration.underline,
                  ),
                  cursorColor: Color(0xff747474),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Mobile",
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
                  top: 10,
                ),
                child: TextField(
                  obscureText: isHidden,
                  controller: createPasswordController,
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
                  top: 40,
                  left: 16,
                  right: 16,
                ),
                child: Container(
                  width: double.infinity,
                  child: GradientButton(
                    height: 40,
                    child: Text(
                      "Register",
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
                height: 150,
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    child: Text(
                      "Already have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff747474),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScrean(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color(0xff747474)),
                    ),
                  ),
                  Expanded(
                    child: Container(),
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
