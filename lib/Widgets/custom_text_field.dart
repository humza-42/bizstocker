import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color fillColor;
  final BorderSide borderSide;
  final BorderSide focusedBorderSide;

  const CustomTextField({
    super.key,

    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor = Colors.white,
    this.borderSide = const BorderSide(color: Colors.grey, width: 2.0),
    this.focusedBorderSide = const BorderSide(color: Colors.blue, width: 2.0),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8.0),
        SizedBox(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: borderSide,
              ),
              // 👇 Unfocused border
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: Colors.grey, // Unfocused color
                  width: 2.0,
                ),
              ),

              // 👇 Focused border
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: Colors.grey, // Focus color
                  width: 2.0,
                ),
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              filled: true,
              fillColor: fillColor,
            ),
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
