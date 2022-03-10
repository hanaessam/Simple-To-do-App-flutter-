import 'package:flutter/material.dart';

import '../models/pixel_text.dart';
import '../models/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/SignUpBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/logo.png')),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: pixelText('ToDo', 'PressStart', 50, Colors.teal),
                ),
              ),
              Center(
                child: pixelText(
                    'Welcome', 'PressStart', 45.0, Colors.teal.shade700),
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
