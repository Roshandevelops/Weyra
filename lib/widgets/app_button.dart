import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final String buttonText;
  final void Function()? onTap;
  // final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: KAppColors.primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
