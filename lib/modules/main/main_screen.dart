import 'package:auto_cars/models/CarModel.dart';
import 'package:auto_cars/models/CategoryModel.dart';
import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/functions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(id: 1, nameAr: 'سيارات', nameEn: 'Cars', img: 'car'),
      CategoryModel(id: 2, nameAr: 'قطع غيار', nameEn: 'Spare', img: 'spare'),
      CategoryModel(id: 3, nameAr: 'اطارات', nameEn: 'Tubes', img: 'tubes'),
      CategoryModel(
          id: 4, nameAr: 'دراجات نارية', nameEn: 'Bikes', img: 'bikes'),
    ];

    List<CarModel> cars = [
      CarModel(
        id: 1,
        nameEn: "New Fight Car",
        nameAr: "سيارة فايت جديدة",
        desc: "Fight| بنغازي",
        price: "56,000",
        img: "flight",
      ),
      CarModel(
        id: 2,
        nameEn: "New Fight Car",
        nameAr: "سيارة فايت جديدة",
        desc: "Fight| بنغازي",
        price: "56,000",
        img: "flight",
      ),
    ];
    return Directionality(
      textDirection: lang == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    setLabel(Labels.LABEL_OFFERS),
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: AppColors.blackColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 34.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: AppColors.cyanColor,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child:
                          Image(image: AssetImage('assets/images/filter.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 410.w,
                height: 30.h,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return createCategoryItem(categories[index]);
                  },
                  itemCount: categories.length,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                setLabel(Labels.LABEL_CARS),
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 320.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => createCarItem(
                    cars[index],
                  ),
                  itemCount: cars.length,
                ),
              ),
              Text(
                setLabel(Labels.LABEL_YESTURDAY),
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 320.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => createCarItem(
                    cars[index],
                  ),
                  itemCount: cars.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container createCarItem(CarModel car) {
    return Container(
      width: 400.w,
      height: 150.h,
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.blackColor,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/images/${car.img}.png'),
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Icon(
                  Icons.star_outline,
                  color: AppColors.greyColor,
                  size: 25.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${lang == 'en' ? car.nameEn : car.nameAr}', //'سيارة Fight جديدة',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                car.desc!, //'Fight| بنغازي',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                ' ${car.price}د.ل',
                style: TextStyle(
                  color: AppColors.cyanColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container createCategoryItem(CategoryModel category) {
    return Container(
      width: 90.w,
      height: 30.h,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.blackColor),
          borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${lang == 'en' ? category.nameEn : category.nameAr}',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Image(
            image: AssetImage('assets/images/${category.img}.png'),
            width: 25.w,
            height: 25.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
