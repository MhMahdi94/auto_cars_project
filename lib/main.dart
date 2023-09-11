import 'package:auto_cars/layout/app_layout.dart';
import 'package:auto_cars/modules/auth/cubit/cubit.dart';
import 'package:auto_cars/modules/splash/splash_screen.dart';
import 'package:auto_cars/shared/cubit/bloc_observer.dart';
import 'package:auto_cars/shared/cubit/cubit.dart';
import 'package:auto_cars/shared/cubit/state.dart';
import 'package:auto_cars/shared/functions.dart';
import 'package:auto_cars/shared/network/local/cache_helper.dart';
import 'package:auto_cars/shared/network/remote/dio_helper.dart';
import 'package:auto_cars/shared/theme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await DioHelper.init();
      await CacheHelper.init();
      runApp(const MyApp());
    },
    blocObserver: AppBlocObserver(),
  );
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..splashScreenProcess(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            key: navigatorKey,
            title: 'Auto Cars',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: SplashScreen(),
          );
        },
        // child: const HomePage(title: 'First Method'),
      ),
    );
  }
}
