import 'package:flutter/material.dart' show Icons, TextButton;
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/helpers/app_regex.dart' show AppRegex;
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart' show TextStyles;
import 'package:gym/core/widgets/app_text_button.dart';
import 'package:gym/core/widgets/app_text_form_field.dart';
import 'package:gym/features/auth/ui/widgets/register_footer.dart';
import 'package:gym/gen/assets.gen.dart' show Assets;

class BigContainerOfRegister extends StatefulWidget {
  const BigContainerOfRegister({super.key});

  @override
  State<BigContainerOfRegister> createState() => _BigContainerOfRegisterState();
}

class _BigContainerOfRegisterState extends State<BigContainerOfRegister> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  bool isPasswordObscureText = true;

  bool isPasswordConfirmationObscureText = true;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      // height: 750.h,
      decoration: BoxDecoration(
        color: colorsManegar.semewhite,
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
            Text('Create New Account', style: TextStyles.font18Blackw600),
            SizedBox(height: 20.h),

            Text(
              'Fill in your details to get started',
              style: TextStyles.font16Blackw600,
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Full Name ', style: TextStyles.font13Blackw600),
            ),
            SizedBox(height: 5),
            AppTextFormField(
              prefixIcon: Icon(
                Icons.person_outlined,
                color: colorsManegar.darkgray,
              ),
              hintText: ' Enter Your Full Name ',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid Name';
                }
              },
              controller: emailcontroller,
            ),
            SizedBox(height: 20.h),

            Align(
              alignment: Alignment.centerLeft,
              child: Text('Phone Number', style: TextStyles.font13Blackw600),
            ),
            SizedBox(height: 5),
            AppTextFormField(
              prefixIcon: Icon(
                Icons.phone_android_outlined,
                color: colorsManegar.darkgray,
              ),
              hintText: ' Enter Your Phone Number ',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid Phone Number';
                }
              },
              controller: emailcontroller,
            ),
            SizedBox(height: 20.h),

            Align(
              alignment: Alignment.centerLeft,
              child: Text('Email', style: TextStyles.font13Blackw600),
            ),
            SizedBox(height: 5),
            AppTextFormField(
              prefixIcon: Icon(Icons.email, color: colorsManegar.darkgray),
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

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Confirm Passowrd',
                style: TextStyles.font13Blackw600,
              ),
            ),
            SizedBox(height: 5.h),
            AppTextFormField(
              prefixIcon: Icon(Icons.lock),
              controller: confirmpasswordcontroller,
              hintText: ' Confirm Your Password ',
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
            SizedBox(height: 32.h),

            AppTextButton(
              backgroundColor: colorsManegar.mainOrange,
              buttonText: 'Register',
              textStyle: TextStyles.font13white800,
              onPressed: () {},
            ),
            SizedBox(height: 18.h),
            RegisterFooter(),
          ],
        ),
      ),
    );
  }
}
