import 'package:auto_cars/modules/auth/cubit/state.dart';
import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/network/local/cache_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context) => BlocProvider.of(context);

  void setCurrentLangugae() {
    if (lang == 'en') {
      lang = 'ar';
      CacheHelper.setData(key: 'lang', value: 'ar');
    } else {
      lang = 'en';
      CacheHelper.setData(key: 'lang', value: 'en');
    }
    emit(AuthChangeLanguageState());
  }
}
