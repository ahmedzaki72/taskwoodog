import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/bloc/bottom_navigation_cubit/layout_states.dart';
import 'package:task1/config/theme_colors.dart';

import '../../../bloc/bottom_navigation_cubit/layout_cubit.dart';


class BottomNavigations extends StatelessWidget {
  static const String routeName = "bottom_navigations_screen";
  const BottomNavigations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder: (context, states) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            selectedItemColor: TColor.meanColor,
            // unselectedItemColor: TColor.iconNavigation,
            // backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.home_outlined),
                icon: const Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.groups_outlined),
                icon: const Icon(Icons.groups_outlined),
                label: "Mements",
              ),
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.chat),
                icon: const Icon(Icons.chat),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.person_outline),
                icon:  const Icon(Icons.person_outline),
                label:"Profile",
              ),
            ],
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavigationBar(index);
            },
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}