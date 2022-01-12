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

class MyElevatedButton extends StatelessWidget {
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.height = 44.0,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(500),
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const StadiumBorder(),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
