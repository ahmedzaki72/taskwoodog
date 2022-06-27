import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config/theme_colors.dart';
import 'package:task1/views/custom_widgets/custom_button.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';

class CustomHomeHeaderW extends StatelessWidget {
  const CustomHomeHeaderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const CustomText(
                text: "Home",
                fontSize: 34,
                fontW: FontWeight.w700,
              ),
              SizedBox(height: 10.w,),
              const CustomText(
                text: "Explore dog walkers",
                fontSize: 17,
                color: Color(0xffB0B0B0),
                fontW: FontWeight.w500,
              ),
            ],
          ),
          Container(
            width: 104.w,
            height: 50.w,
            decoration: BoxDecoration(
              color: TColor.meanColor,
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add,size:  18.sp, color: TColor.white,),
                  CustomText(text: 'Book a walk', fontW: FontWeight.w700, fontSize: 10, color: TColor.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
