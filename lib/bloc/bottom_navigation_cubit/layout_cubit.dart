import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/views/screens/chat_screen/chat_screen.dart';
import 'package:task1/views/screens/home_screen/home_screen.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int tab = 0;

  List<Widget> screens = [
    const HomeScreen(),
    Container(),
    const ChatScreen(),
    Container(),
  ];

  void changeBottomNavigationBar(index) {
    currentIndex = index;
    emit(LayoutBottomNavigationBar());
  }

  void changeTabBar(index) {
    tab = index;
    emit(LayoutTabBar());
  }

}