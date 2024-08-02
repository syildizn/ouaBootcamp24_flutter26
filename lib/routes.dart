import 'package:flutter/material.dart';
import 'screens/SplashScreen/view.dart';
import 'screens/signUpAndLoginScreens/loginScreen/view.dart';
import 'screens/signUpAndLoginScreens/signUpScreens/view.dart';
import 'screens/WordGameScreen/view.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  WordGameScreen.routeName: (context) => WordGameScreen(),
};
