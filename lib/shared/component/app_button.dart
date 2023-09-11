import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InkWell createAppButton(labelKey,
    {Color? backgroundColor,
    Color? color,
    List<BoxShadow>? shadow,
    required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 390.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: backgroundColor, //AppColors.cyanColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: shadow,
      ),
      alignment: Alignment.center,
      child: Text(
        setLabel(labelKey),
        style: TextStyle(
          color: color, //AppColors.whiteColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
