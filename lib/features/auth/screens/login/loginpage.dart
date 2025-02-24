import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_design5/features/auth/screens/signUp/signup_page.dart';
import 'package:login_design5/utilities/constants/colors.dart';
import 'package:login_design5/utilities/constants/icons.dart';
import 'package:login_design5/utilities/constants/images.dart';
import 'package:login_design5/utilities/constants/sizes.dart';
import 'package:login_design5/utilities/constants/texts.dart';
import 'package:login_design5/widgets/BoldText.dart';
import 'package:login_design5/widgets/CustomTextFields.dart';
import 'package:login_design5/widgets/ImageContainer.dart';
import 'package:login_design5/widgets/MyContainer.dart';
import 'package:login_design5/widgets/NormalText.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(padding: AppSize.allPadding),

              Stack(
                children: [
                  Image.asset(AppImages.bgImage),
                  Positioned(
                    top: 40,
                    left: 20,
                    right: 0,
                    child: Boldtext(
                      text: "Hi,\nPlease Login",
                      color: AppColors.whiteColors,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),
              // Boldtext(text: AppTexts.loginTetx),
              Padding(
                padding: AppSize.sidesPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Boldtext(text: AppTexts.textbyemail),
                    const SizedBox(height: 5),

                    Customtextfield(
                      title: AppTexts.emailText,
                      icon: AppIcons.emailIcon,
                      radius: 12,
                    ),
                    const SizedBox(height: 20),
                    Boldtext(text: AppTexts.textbypasword),
                    const SizedBox(height: 10),
                    Customtextfield(
                      title: AppTexts.passText,
                      icon: AppIcons.passIcon,
                      radius: 12,
                    ),
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Normaltext(text: "Don,t have an Account?"),
                        const SizedBox(width: 5),

                        GestureDetector(
                          onTap: () {
                            Get.to(() => SignupPage());
                          },
                          child: Boldtext(text: "SignUp"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: AppSize.lignPadding,
                            child: Divider(thickness: 2, indent: 0),
                          ),
                        ),

                        Padding(
                          padding: AppSize.lignPadding,
                          child: Normaltext(text: "Or Login With"),
                        ),

                        Expanded(
                          child: Padding(
                            padding: AppSize.textlignPadding,
                            child: Divider(thickness: 2, indent: 0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Imagecontainer(
                            child: Boldtext(text: AppTexts.faceText),
                            width: 150,
                            height: 50,
                            imagePath: [AppImages.faceImage],
                          ),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          child: Imagecontainer(
                            child: Boldtext(text: AppTexts.googText),
                            width: 150,
                            height: 50,
                            imagePath: [AppImages.googImage],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Mycontainer(
                      child: Boldtext(text: "Login"),
                      width: double.maxFinite,
                      height: 50,
                      radius: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
