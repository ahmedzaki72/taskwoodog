import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/bloc/bottom_navigation_cubit/layout_cubit.dart';
import 'package:task1/bloc/bottom_navigation_cubit/layout_states.dart';
import 'package:task1/config/routes.dart';
import 'package:task1/views/screens/onboarding_screen/onboarding_screen.dart';

import 'views/screens/bottom_navigation_bar/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, state) {
          return BlocConsumer<LayoutCubit, LayoutStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'WooDog',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routes: routes,
                home: const  OnBoardingScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
