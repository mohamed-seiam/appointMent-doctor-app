import 'package:appointment_doctor_app/core/routing/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bloc_observable.dart';
import 'doc_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}

