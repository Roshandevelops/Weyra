import 'package:clot/presentation/auth/create_account/create_account_screen.dart';
import 'package:clot/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:clot/widgets/app_textform_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 123),
            Text(
              "Sign in",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 32),
            const TextformFieldWidget(
              labelText: "Email Address",
              hintText: "Email",
            ),
            const SizedBox(height: 16),
            const TextformFieldWidget(
              labelText: "Enter Password",
              hintText: "password",
            ),
            const SizedBox(height: 16),
            AppButtonWidget(
              buttonText: "Continue",
              onTap: () {},
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: "Dont have an Account ? ",
                style: const TextStyle(fontWeight: FontWeight.w100),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const CreateAccountScreen();
                            },
                          ),
                        );
                      },
                    text: "Create One",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text: "Forgot Password ? ",
                style: TextStyle(fontWeight: FontWeight.w100),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const ForgotPasswordScreen();
                            },
                          ),
                        );
                      },
                    text: "Reset",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
