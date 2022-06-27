import 'package:flutter/material.dart';
import 'package:task1/views/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:task1/views/screens/onboarding_screen/onboarding_screen.dart';
import 'package:task1/views/screens/signup_screen/signup_screen.dart';


Map<String, Widget Function(BuildContext)> routes = {
  BottomNavigations.routeName: (context) => const BottomNavigations(),
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
