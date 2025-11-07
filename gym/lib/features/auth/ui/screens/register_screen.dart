import 'package:flutter/material.dart';
import 'package:gym/features/auth/ui/widgets/background_image.dart';
import 'package:gym/features/auth/ui/widgets/big_container_of_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Center(child: BigContainerOfRegister())],
          ),
        ],
      ),
    );
  }
}
