import 'package:flutter/material.dart';
import 'custom_button.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? width;
  final double height;

  const SignInButton({
    super.key,
    this.onPressed,
    this.text = 'Sign in',
    this.width,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      text: text,
      width: width,
      height: height,
    );
  }
}
