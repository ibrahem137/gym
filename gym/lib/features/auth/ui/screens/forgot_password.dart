import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/features/auth/ui/widgets/background_image.dart';
import 'package:gym/features/auth/ui/widgets/big_container_of_forgotpass.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70.h),
              Center(child: BigContainerOfForgotpass()),
            ],
          ),
        ],
      ),
    );
  }
}
