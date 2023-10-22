import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class AppButtonWidget extends StatelessWidget {
  final String? title;
  final Color? splashColor;
  final Color color;
  final Color borderColor;
  final Function onPressed;
  final double elevation;
  final double? highlightElevation;
  final double borderRadius;
  final double? height;
  final double? width;
  final TextStyle buttonStyle;
  final double borderWidth;
  final double verticalPadding;

  const AppButtonWidget({
    super.key,
    this.splashColor,
    this.borderWidth = 1.0,
    this.verticalPadding = 0,
    this.elevation = 0,
    this.highlightElevation,
    this.borderRadius = 4,
    this.height = 40,
    this.width,
    this.buttonStyle = AppTextStyle.whiteF14W500TextStyle,
    this.color = AppColors.blueColor,
    this.borderColor = AppColors.blueColor,
    required this.onPressed,
    this.title,
  });

  const AppButtonWidget.outline({
    super.key,
    this.splashColor,
    this.borderWidth = 1.0,
    this.verticalPadding = 0,
    this.elevation = 0,
    this.highlightElevation,
    this.borderRadius = 4,
    this.height,
    this.width,
    this.title,
    this.buttonStyle = AppTextStyle.blueF14W500TextStyle,
    this.color = Colors.white,
    this.borderColor = AppColors.blueColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      elevation: elevation,
      highlightElevation: highlightElevation,
      color: color,
      height: height,
      minWidth: width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: verticalPadding),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius)),
      onPressed: () {
        onPressed();
      },
      child: Text(title!, textAlign: TextAlign.center, style: buttonStyle),
    );
  }
}
