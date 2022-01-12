import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.width = double.infinity,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: LinearGradient(
          colors: [Color(0xffEE87D7), Color(0xffF46186)],
        ),
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
