import 'package:appointment_doctor_app/core/di/dependency_injection.dart';
import 'package:appointment_doctor_app/core/helper/extenstion.dart';
import 'package:appointment_doctor_app/core/routing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bloc_observable.dart';
import 'core/helper/constants.dart';
import 'core/helper/share_pref_helper.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  Bloc.observer = MyBlocObserver();
  await checkIfLoggedInUser();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
