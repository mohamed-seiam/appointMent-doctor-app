import 'package:appointment_doctor_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute (RouteSettings settings){
    /// this arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen :
        return MaterialPageRoute(builder: (_)=> const OnBoardingScreen());
      case Routes.logInScreen :
        return MaterialPageRoute(builder: (_)=> const LogInScreen());
      default :
        return MaterialPageRoute(builder: (_)=>Scaffold(
          body: Center(
            child: Text('No Route defined for ${settings.name} '),
          ),
        ));
    }
  }
}