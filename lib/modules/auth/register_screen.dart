import 'package:auto_cars/modules/auth/cubit/cubit.dart';
import 'package:auto_cars/modules/auth/cubit/state.dart';
import 'package:auto_cars/modules/auth/login_screen.dart';
import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/component/app_button.dart';
import 'package:auto_cars/shared/component/app_text_button.dart';
import 'package:auto_cars/shared/component/app_text_form_field.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:auto_cars/shared/labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  Container otherLoginButton(
    labelKey, {
    String? imageName,
  }) {
    return Container(
      //width: 180.w,
      height: 60.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.blackColor,
          ),
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/${imageName}.png'),
              //width: 40.w,
              height: 35.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              setLabel(labelKey),
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController secondNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController mobileNoController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      // appBar: AppBar(),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AuthCubit cubit = AuthCubit.get(context);
          return Directionality(
            textDirection: lang == 'en' ? TextDirection.ltr : TextDirection.rtl,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              setLabel(Labels.LABEL_SUBSCRIBE),
                              style: TextStyle(
                                fontSize: 17.sp,
                                color: AppColors.blackColor,
                              ),
                            ),
                            Text(
                              setLabel(Labels.LABEL_SKIP),
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColors.cyanColor,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.cyanColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        //user image
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 120.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(250.r),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  isAntiAlias: true,
                                  image:
                                      AssetImage('assets/images/applogo.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        //firstname
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          controller: firstNameController,
                          label: setLabel(Labels.LABEL_FIRSTNAME),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        //lastname
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          controller: secondNameController,
                          label: setLabel(Labels.LABEL_SECONDNAME),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        //email
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          controller: emailController,
                          label: setLabel(Labels.LABEL_EMAIL),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        //mobile no
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          controller: mobileNoController,
                          label: setLabel(Labels.LABEL_MOBILE_NO),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        //password
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          isPassword: true,
                          controller: passwordController,
                          label: setLabel(Labels.LABEL_USERPWD),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        //confirm password
                        AppTextFormField(
                          onChanged: (p0) {},
                          validator: (String? p0) {
                            if (p0!.isEmpty) {
                              return setLabel(Labels.LABEL_REQUIRED);
                            }

                            return null;
                          },
                          isPassword: true,
                          controller: confirmPasswordController,
                          label: setLabel(Labels.LABEL_CONFIRM_PWD),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),

                        //login button
                        createAppButton(
                          Labels.LABEL_SUBSCRIBE,
                          onTap: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          backgroundColor: AppColors.cyanColor,
                          color: AppColors.whiteColor,
                          shadow: [
                            BoxShadow(
                                color: AppColors.cyanColor, // shadow color
                                blurRadius: 10, // shadow radius
                                offset: Offset(0, 0), // shadow offset
                                spreadRadius:
                                    0.1, // The amount the box should be inflated prior to applying the blur
                                blurStyle: BlurStyle.normal // set blur style
                                ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        //cancel button
                        createAppButton(
                          Labels.LABEL_CANCEL,
                          onTap: () {},
                          backgroundColor: AppColors.blackColor,
                          color: AppColors.whiteColor,
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        //divider
                        Row(children: <Widget>[
                          Expanded(
                              child: Divider(
                            color: AppColors.blackColor,
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Text(
                              setLabel(Labels.LABEL_OR),
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: AppColors.blackColor,
                          )),
                        ]),
                        SizedBox(
                          height: 12.h,
                        ),
                        //login with google/facebook
                        Align(
                          alignment: lang == 'en'
                              ? Alignment.topLeft
                              : Alignment.topRight,
                          child: Text(
                            setLabel(Labels.LABEL_SUBSCRIBE_WITH),
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            otherLoginButton(
                              Labels.LABEL_LOGIN_GOOGLE,
                              imageName: 'google',
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            otherLoginButton(
                              Labels.LABEL_LOGIN_FACEBOOK,
                              imageName: 'facebook',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Align(
                          alignment: lang == 'en'
                              ? Alignment.topLeft
                              : Alignment.topRight,
                          child: Row(
                            children: [
                              Text(
                                setLabel(Labels.LABEL_HAVE_ACCOUNT),
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              createAppTextButton(
                                Labels.LABEL_LOGIN,
                                onPressed: () {
                                  navigateToWithReplacement(
                                    context,
                                    LoginScreen(),
                                  );
                                },
                                color: AppColors.cyanColor,
                                decorationColor: AppColors.cyanColor,
                                fontSize: 10.sp,
                              ),
                            ],
                          ),
                        ),

                        createAppTextButton(
                          lang == 'en'
                              ? Labels.LABEL_ARABIC
                              : Labels.LABEL_ENGLISH,
                          onPressed: () {
                            cubit.setCurrentLangugae();
                          },
                          color: AppColors.cyanColor,
                          decorationColor: AppColors.cyanColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
