import 'package:auto_cars/main.dart';
import 'package:auto_cars/modules/search/search_screen.dart';
import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:flutter/material.dart';

AppBar createAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.cyanColor,
    // leading: IconButton(
    //   icon: Icon(Icons.menu),
    //   color: AppColors.whiteColor,
    //   onPressed: () {},
    // ),
    actions: [
      IconButton(
        onPressed: () {
          navigateTo(context, SearchScreen());
        },
        icon: Icon(Icons.search),
        color: AppColors.whiteColor,
      ),
    ],
  );
}
