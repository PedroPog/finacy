import 'package:finacy/utils/constants/app_colors.dart';
import 'package:finacy/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key, this.onPressed,required this.text
  });


  final BorderRadius _borderRadius = const BorderRadius.all(Radius.circular(24.0));

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 48.0,
        decoration: BoxDecoration(
        borderRadius: _borderRadius, //! borda Externa
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: onPressed != null ? AppColors.greenGradient:AppColors.greyGradient
        )
      ),
      child: InkWell(
        borderRadius: _borderRadius, //! borda Interna
        onTap: onPressed,
        child: Align(child: Text(text,style: AppTextStyle.mediumText18.copyWith(color: AppColors.white),)),
      )
      ),
    );
  }
}