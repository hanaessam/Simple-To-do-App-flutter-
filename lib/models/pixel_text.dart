import 'package:flutter/material.dart';

class pixelText extends StatelessWidget {
  String text, family;
  double size;
  dynamic color;
  pixelText(this.text, this.family, this.size, this.color);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontFamily: family, fontSize: size),
    );
  }
}
