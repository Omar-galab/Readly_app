import 'package:flutter/material.dart';
import 'package:readly/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bacgroundColore,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.onPressed,
  });
  final Color bacgroundColore;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bacgroundColore,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyles18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
