import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:flutter/material.dart';

TextButton createAppTextButton(labelKey,
    {Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    Color? decorationColor,
    void Function()? onPressed}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      setLabel(labelKey),
      style: TextStyle(
        color: color, //AppColors.cyanColor,
        decoration: TextDecoration.underline,
        decorationColor: decorationColor, //AppColors.cyanColor,
        fontWeight: fontWeight, //FontWeight.bold,
        fontSize: fontSize, //13.sp,
      ),
    ),
  );
}
