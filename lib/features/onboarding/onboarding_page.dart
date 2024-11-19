import 'dart:developer';

import 'package:finacy/utils/constants/app_colors.dart';
import 'package:finacy/utils/constants/app_text.dart';
import 'package:finacy/utils/constants/app_text_style.dart';
import 'package:finacy/utils/widgets/custom_text.dart';
import 'package:finacy/utils/widgets/primary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          SizedBox(height: 60.0),
          Expanded(
              flex: 2,
              child: Container(
                child: Image.asset('assets/images/man.png'),
              )),
          Text(AppText.welcomeOne,
              style: AppTextStyle.mediumText
                  .copyWith(color: AppColors.greenlightTwo)),
          Text(AppText.welcomeTwo,
              style: AppTextStyle.mediumText
                  .copyWith(color: AppColors.greenlightTwo)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: PrimaryButton(
              text: AppText.btnStart,
              onPressed: () {
                log("Get Started");
              },
            ),
          ),
          /*RichText(
            text: TextSpan(
              children: [
                TextSpan(text: AppText.textLoginOne,style: AppTextStyle.smallText.copyWith(color: AppColors.grey)),
                TextSpan(
                  text: AppText.textLoginTwo,
                  style: AppTextStyle.smallText.copyWith(color: AppColors.greenlightOne),
                  recognizer: TapGestureRecognizer()..onTap = () => print('Message'),
                  ),
              ],
              ),
          ),*/
          CustomTextButton(
            text: AppText.textLoginOne,
            textButton: AppText.textLoginTwo,
            onPressed: (){
              log("LogIn");
            },
          ),
          SizedBox(height: 60.0)
        ],
      ),
    );
  }
}


