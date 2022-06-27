import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';

class CustomTitleW extends StatelessWidget {
  String? title;
  String? click;
  Function()? onTap;
  CustomTitleW({
    Key? key,
    this.onTap,
    this.click,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: title,
            fontSize: 34,
            fontW: FontWeight.w700,
          ),
          InkWell(
            onTap: onTap,
            child: CustomText(
              text: click,
              fontSize: 15,
              fontW: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
