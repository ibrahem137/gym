import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/helpers/extensions.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/core/theme/styles.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyles.font13Blackw600,
          children: [
            const TextSpan(text: "Already have an account? "),
            TextSpan(
              text: "LogIn",
              style: TextStyles.font13mainOrange600,
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(Routes.loginScreen);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
