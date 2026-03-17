import 'package:flutter/material.dart';
import '../Widgets/custom_text_field.dart';
import '../Widgets/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Prevent app from closing when back button is pressed
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10.0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 12.0),
                    // const Text(
                    //   'BizStocker ',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 36.0,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black87,
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'BizStocker',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Image.asset(
                          'assets/images/logo.png', // your image path
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    _buildEmailTextField(),
                    const SizedBox(height: 24.0),
                    _buildPasswordTextField(),
                    // const SizedBox(height: 24.0),
                    _buildRememberForgotRow(),
                    const SizedBox(height: 32.0),
                    _buildLoginButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return CustomTextField(
      prefixIcon: const Icon(Icons.email, color: Colors.grey),
      hintText: 'Enter your email ',
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _buildPasswordTextField() {
    return CustomTextField(
      prefixIcon: const Icon(Icons.lock, color: Colors.grey),
      hintText: 'Enter your password',
      textInputAction: TextInputAction.done,
      obscureText: _obscureText,
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: _togglePasswordVisibility,
      ),
    );
  }

  Widget _buildRememberForgotRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return SignInButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/dashboard');
      },
    );
  }
}
