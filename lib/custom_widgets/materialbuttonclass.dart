import 'package:flutter/material.dart';

class MaterialButtonClass extends StatelessWidget {
  MaterialButtonClass({
    Key? key,
    required this.text,
    this.buttoncolor,
    this.borderRadius,
    this.minwidth,
    this.onpressed,
  }) : super(key: key);
  final String text;

  final Color? buttoncolor;
  final BorderRadius? borderRadius;
  final double? minwidth;
  VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minwidth,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      color: buttoncolor ?? const Color(0xFF00C569),
      onPressed: onpressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
