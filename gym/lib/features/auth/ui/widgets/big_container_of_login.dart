import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/helpers/app_regex.dart';
import 'package:gym/core/helpers/extensions.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_text_button.dart';
import 'package:gym/core/widgets/app_text_form_field.dart';
import 'package:gym/features/auth/ui/widgets/check_box.dart';
import 'package:gym/features/auth/ui/widgets/text_span.dart';
import 'package:gym/gen/assets.gen.dart';

class BigContainerOfLogin extends StatefulWidget {
  const BigContainerOfLogin({super.key});

  @override
  State<BigContainerOfLogin> createState() => _BigContainerOfLoginState();
}

class _BigContainerOfLoginState extends State<BigContainerOfLogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool isPasswordObscureText = true;

  bool isPasswordConfirmationObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 750.h,
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
              width: 150.w,
              height: 150.h,
            ),
            SizedBox(height: 20.h),
            Text('Login to Gym Management', style: TextStyles.font24BlackBold),
            SizedBox(height: 20.h),

            Text(
              'Enter your credentials to access your account',
              style: TextStyles.font16Blackw600,
            ),
            SizedBox(height: 20.h),
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
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Passowrd', style: TextStyles.font13Blackw600),
            ),
            SizedBox(height: 5.h),
            AppTextFormField(
              prefixIcon: Icon(Icons.lock),
              controller: passwordcontroller,
              hintText: ' Enter Your Password ',
              isObscureText: isPasswordConfirmationObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordConfirmationObscureText =
                        !isPasswordConfirmationObscureText;
                  });
                },
                child: Icon(
                  isPasswordConfirmationObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            SizedBox(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                CheckBox(),
                TextButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font13mainOrange600,
                  ),

                  onPressed: () {
                    context.pushNamed(Routes.forgotpasswordScreen);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
            AppTextButton(
              backgroundColor: colorsManegar.mainOrange,
              buttonText: 'LogIn',
              textStyle: TextStyles.font13white800,
              onPressed: () {},
            ),
            SizedBox(height: 18),
            LoginFooter(),
          ],
        ),
      ),
    );
  }
}
