import 'package:appointment_doctor_app/core/di/dependency_injection.dart';
import 'package:appointment_doctor_app/core/routing/routes.dart';
import 'package:appointment_doctor_app/features/home/ui/widgets/home_screen.dart';
import 'package:appointment_doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    /// this arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LogInScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route defined for ${settings.name} '),
            ),
          ),
        );
    }
  }
}
