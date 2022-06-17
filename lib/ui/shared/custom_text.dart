import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    final this.text,
    final this.size,
    final this.color,
    final this.height,
    final this.fontFamily,
    final this.fontWeight, {
    final Key? key,
  }) : super(key: key);

  final String text;
  final String fontFamily;
  final double size;
  final Color color;
  final double height;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
