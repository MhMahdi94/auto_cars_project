import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSearchFormField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? label;
  // final String? labelEn;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  const AppSearchFormField({
    Key? key,
    required this.onChanged,
    this.isPassword = false,
    required this.validator,
    required this.controller,
    this.prefixIcon,
    this.label,
    //  this.labelEn,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: TextFormField(
        controller: controller,
        validator: validator,
        cursorColor: AppColors.cyanColor,
        obscureText: isPassword,
        obscuringCharacter: '●',
        decoration: InputDecoration(
          filled: false,
          suffixIcon: suffixIcon,
          prefixIcon: Container(
            width: 60.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: lang == 'en'
                  ? BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      bottomLeft: Radius.circular(50.r),
                    )
                  : BorderRadius.only(
                      topRight: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
            ),
            child: Icon(
              prefixIcon,
              color: AppColors.whiteColor,
            ),
          ),
          // fillColor: AppColors.blackColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              120.r,
            ),
            borderSide: BorderSide(color: AppColors.greyColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cyanColor),
              borderRadius: BorderRadius.circular(120.r)),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.cyanColor),
            borderRadius: BorderRadius.circular(120.r),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h,
          ),
          hintText: label, // lang == 'ar' ? labelAr : labelEn,
          hintStyle: TextStyle(
            color: AppColors.greyColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
          errorStyle: TextStyle(
            color: AppColors.cyanColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        cursorHeight: 16.h,
        onChanged: onChanged,
      ),
    );
  }
}
