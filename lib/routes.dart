import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/screens/HomeScreen/view.dart';
import 'package:oua_bootcamp24_flutter26/screens/SplashScreen/view.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/loginScreen/view.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/signUpScreens/view.dart';

Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context)=> SignUpScreen(),
  LoginScreen.routeName: (context)=> LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};