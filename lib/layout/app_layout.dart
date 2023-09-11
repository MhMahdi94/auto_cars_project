import 'package:auto_cars/modules/main/main_screen.dart';
import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/component/appbar_component.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:auto_cars/shared/labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: lang == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: createAppBar(context),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: AppColors.greyColor,
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                setLabel(Labels.LABEL_USERNAME),
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              createDrawerTile(
                Labels.LABEL_CLASSIFICATION,
                icon: Icon(
                  Icons.folder,
                  color: AppColors.blackColor,
                  size: 25.sp,
                ),
              ),
              createDrawerTile(
                Labels.LABEL_FAV,
                icon: Icon(
                  Icons.star,
                  color: AppColors.blackColor,
                  size: 25.sp,
                ),
              ),
              createDrawerTile(
                Labels.LABEL_ADS,
                icon: Icon(
                  Icons.local_offer,
                  color: AppColors.blackColor,
                  size: 25.sp,
                ),
              ),
              createDrawerTile(
                Labels.LABEL_PROFILE,
                icon: Icon(
                  Icons.account_circle,
                  color: AppColors.blackColor,
                  size: 25.sp,
                ),
              ),
              createDrawerTile(
                Labels.LABEL_SETTINGS,
                icon: Icon(
                  Icons.settings,
                  color: AppColors.blackColor,
                  size: 25.sp,
                ),
              ),
            ],
          ),
        ),
        body: MainScreen(),
      ),
    );
  }

  ListTile createDrawerTile(
    labelKey, {
    Icon? icon,
  }) {
    return ListTile(
      onTap: () {},
      leading: icon,
      title: Text(
        setLabel(labelKey),
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
