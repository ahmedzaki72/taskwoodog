import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config/theme_colors.dart';
import 'package:task1/views/custom_widgets/custom_button.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';
import 'package:task1/views/custom_widgets/image_network.dart';

class CustomSliderW extends StatelessWidget {
  const CustomSliderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.w,
      child: ListView.builder(
          itemCount: 6,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: InkWell(
                onTap: (){
                  print("working");
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageNetwork(url: "assets/images/Frame 33575.png"),
                    SizedBox(height: 10.w),
                    const CustomTitleSliderW(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class CustomTitleSliderW extends StatelessWidget {
  const CustomTitleSliderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Mason York",
                fontW: FontWeight.w500,
                fontSize: 17,
              ),
              SizedBox(
                height: 3.w,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 10.sp,
                    color: Color(0xffA1A1A1),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const CustomText(
                    text: "7 km from you",
                    fontW: FontWeight.w500,
                    fontSize: 10,
                    color: Color(0xffA1A1A1),
                  ),
                ],
              ),
            ],
          ),
          CustomButton(
            text: "\$3/h",
            fontSize: 10,
            fontWeight: FontWeight.w500,
            onTap: () {},
            width: 60,
            height: 25,
            borderColor: TColor.black,
          ),
        ],
      ),
    );
  }
}
