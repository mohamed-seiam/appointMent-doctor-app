import 'package:appointment_doctor_app/core/di/dependency_injection.dart';
import 'package:appointment_doctor_app/core/routing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bloc_observable.dart';
import 'doc_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  Bloc.observer = MyBlocObserver();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}

