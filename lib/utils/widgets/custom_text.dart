import 'package:finacy/utils/constants/app_colors.dart';
import 'package:finacy/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text; //! Texto que não sera clicado 
  final String textButton; //! Texto que sera clicadoS
  const CustomTextButton(
      {super.key,
      this.onPressed,
      required this.text,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
            style: AppTextStyle.smallText.copyWith(color: AppColors.grey)),
        TextButton(
          onPressed: onPressed,
          child: Text(textButton,
              style: AppTextStyle.smallText
                  .copyWith(color: AppColors.greenlightTwo)),
        ),
      ],
    );
  }
}