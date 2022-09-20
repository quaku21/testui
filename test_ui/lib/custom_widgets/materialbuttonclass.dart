import 'package:flutter/material.dart';

class MaterialButtonClass extends StatelessWidget {
  const MaterialButtonClass({
    Key? key,
    required this.text,
    required this.route,
    this.buttoncolor,
    this.borderRadius,
    this.minwidth,
  }) : super(key: key);
  final String text;
  final String route;
  final Color? buttoncolor;
  final BorderRadius? borderRadius;
  final double? minwidth;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minwidth,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      color: buttoncolor ?? const Color(0xFF00C569),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
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
