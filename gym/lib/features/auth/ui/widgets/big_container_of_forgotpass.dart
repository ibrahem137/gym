import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/helpers/app_regex.dart';
import 'package:gym/core/helpers/extensions.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_text_button.dart';
import 'package:gym/core/widgets/app_text_form_field.dart';
import 'package:gym/gen/assets.gen.dart';

// ignore: must_be_immutable
class BigContainerOfForgotpass extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  BigContainerOfForgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 500.h,
      decoration: BoxDecoration(
        color: ColorsManegar.semewhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            Image.asset(
              Assets.images.gymproLogo.path,
              width: 100.w,
              height: 100.h,
            ),
            //   SizedBox(height: 20.h),
            Text('Reset Passowrd', style: TextStyles.font24BlackBold),

            //   SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 85.w),
                Text(
                  'Enter your email or phone number\n to receive reset instructions',
                  style: TextStyles.font13darkgrayw400,
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Email', style: TextStyles.font13Blackw600),
            ),
            SizedBox(height: 5),
            AppTextFormField(
              prefixIcon: Icon(Icons.email, color: ColorsManegar.darkgray),
              hintText: ' Enter Your Email ',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
              controller: emailcontroller,
            ),
            SizedBox(height: 30.h),
            AppTextButton(
              backgroundColor: ColorsManegar.mainOrange,
              buttonText: 'Send Reset Instructions',
              textStyle: TextStyles.font13white800,
              onPressed: () {},
            ),
            SizedBox(height: 10.h),

            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 5.w),

                  Text('Back to Login ', style: TextStyles.font13darkgrayw400),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
