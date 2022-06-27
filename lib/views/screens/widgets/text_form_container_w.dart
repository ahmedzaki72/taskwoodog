import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config/theme_colors.dart';

class TextFormContainerW extends StatelessWidget {
  Widget? widget;
  double height;
  TextFormContainerW({
    Key? key,
    this.widget,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: height.w,
      decoration: BoxDecoration(
          color: TColor.bgTextC, borderRadius: BorderRadius.circular(14.r)),
      child: widget,
    );
  }
}
