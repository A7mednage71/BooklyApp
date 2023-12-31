import 'package:bookly/core/Utils/TextStyles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.borderRadius,
    required this.textcolor,
    required this.backgroundcolor,
    required this.text, this.onPressed,
  });

  final String text;
  final BorderRadiusGeometry borderRadius;
  final Color textcolor;
  final Color backgroundcolor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: backgroundcolor,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyles.textStyle16
                .copyWith(color: textcolor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
