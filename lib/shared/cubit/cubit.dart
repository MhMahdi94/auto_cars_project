import 'dart:async';

import 'package:auto_cars/layout/app_layout.dart';
import 'package:auto_cars/main.dart';
import 'package:auto_cars/shared/cubit/state.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  //splash Screen
  splashScreenProcess() {
    Timer(Duration(seconds: 3), () {
      // navigateToWithReplacement(
      //     MyApp.navigatorKey.currentState!.context, AppLayout());
      emit(AppSplashCompleteState());
    });
  }
}
