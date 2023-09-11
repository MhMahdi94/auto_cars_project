import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/component/app_search_form_field.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:auto_cars/shared/labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Directionality(
      textDirection: lang == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Text(
                setLabel(Labels.LABEL_SEARCH),
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.blackColor,
                ),
              ),
              AppSearchFormField(
                onChanged: (p0) {},
                validator: (p0) {},
                prefixIcon: Icons.search_outlined,
                controller: searchController,
                label: setLabel(Labels.LABEL_SEARCH_HINT),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
