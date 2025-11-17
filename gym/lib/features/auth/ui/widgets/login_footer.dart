import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/helpers/extensions.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/core/theme/styles.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyles.font13Blackw600,
          children: [
            const TextSpan(text: "Don’t have an account? "),
            TextSpan(
              text: "Register",
              style: TextStyles.font13mainOrange600,
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(Routes.registersScreen);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
