import 'package:flutter/material.dart';
import 'package:to_do_app_task/models/pixel_text.dart';

class WideButton extends StatelessWidget {
  final String text;
  WideButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.cyan.shade700,
            Colors.tealAccent,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(4, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: pixelText(text, 'PressStart', 30.0, Colors.white),
      ),
    );
  }
}
