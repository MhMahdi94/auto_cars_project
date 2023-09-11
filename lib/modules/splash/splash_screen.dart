import 'package:auto_cars/layout/app_layout.dart';
import 'package:auto_cars/modules/auth/login_screen.dart';
import 'package:auto_cars/shared/colors.dart';
import 'package:auto_cars/shared/cubit/cubit.dart';
import 'package:auto_cars/shared/cubit/state.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AppSplashCompleteState) {
          navigateToWithReplacement(context, LoginScreen());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.blackColor,
          body: Center(
            child: Image(
              image: AssetImage('assets/images/applogo.png'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
