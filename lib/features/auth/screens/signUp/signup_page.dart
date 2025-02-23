import 'package:flutter/material.dart';
import 'package:login_design5/utilities/constants/icons.dart';
import 'package:login_design5/utilities/constants/images.dart';
import 'package:login_design5/utilities/constants/sizes.dart';
import 'package:login_design5/utilities/constants/texts.dart';
import 'package:login_design5/widgets/BoldText.dart';
import 'package:login_design5/widgets/CustomTextFields.dart';
import 'package:login_design5/widgets/MyContainer.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(padding: const EdgeInsets.all(8.0)),

              Image.asset(AppImages.bgImage),
              const SizedBox(height: 50),
              // Boldtext(text: AppTexts.loginTetx),
              Padding(
                padding: AppSize.sidesPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Boldtext(text: "Username"),
                    const SizedBox(height: 5),

                    Customtextfield(
                      title: AppTexts.userText,
                      icon: AppIcons.userIcon,
                      radius: 12,
                    ),
                    const SizedBox(height: 20),
                    Boldtext(text: "Email"),
                    const SizedBox(height: 5),

                    Customtextfield(
                      title: AppTexts.emailText,
                      icon: AppIcons.emailIcon,
                      radius: 12,
                    ),
                    const SizedBox(height: 20),
                    Boldtext(text: "Password"),

                    const SizedBox(height: 10),
                    Customtextfield(
                      title: AppTexts.passText,
                      icon: AppIcons.passIcon,
                      radius: 12,
                    ),
                    const SizedBox(height: 20),
                    Boldtext(text: "Phone"),

                    Customtextfield(
                      title: AppTexts.phoneText,
                      icon: AppIcons.phoneIcon,
                      radius: 12,
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
