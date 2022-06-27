import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config/theme_colors.dart';
import 'package:task1/views/custom_widgets/custom_button.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';
import 'package:task1/views/custom_widgets/image_network.dart';
import 'package:task1/views/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:task1/views/screens/signup_screen/signup_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "on_boarding_screen";
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ImageNetwork(
                  url: "assets/images/ONBOARDING PICTURE.png",
                  width: 1.sw,
                ),
                Positioned(
                  top: 40.w,
                  left: 10.w,
                  child: Row(
                    children: [
                      const ImageNetwork(
                        url: "assets/images/woo.png",
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const ImageNetwork(
                        url: "assets/images/woo dog.png",
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 70.w,
                  right: 0,
                  left: 0,
                  child: const CountRowW(),
                ),
                Positioned(
                  bottom: 0.w,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      const CustomText(
                        text: "Too tired to walk your dog? ",
                        color: TColor.white,
                        fontSize: 22,
                        fontW: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      const CustomText(
                        text: "Let’s help you!",
                        color: TColor.white,
                        fontSize: 22,
                        fontW: FontWeight.w700,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.w,
            ),
            CustomButton(
              text: "Join our community",
              width: 324,
              height: 58,
              onTap: () {
                Navigator.pushNamed(context, BottomNavigations.routeName);
              },
              fontSize: 17,
              radius: 14,
              fontWeight: FontWeight.w700,
              borderColor: TColor.meanColor,
              bgColor: TColor.meanColor,
            ),
            SizedBox(
              height: 20.w,
            ),
            RichText(
              text: TextSpan(
                text: 'Already a member? ',
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: TColor.white),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign Up',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamed(context, SignUpScreen.routeName),
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: TColor.meanColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CountRowW extends StatelessWidget {
  const CountRowW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 15.r,
          backgroundColor: TColor.white,
          child: const CustomText(
            text: "1",
            color: TColor.black,
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        const LineContainerW(),
        SizedBox(
          width: 3.w,
        ),
        CircleAvatar(
          radius: 15.r,
          backgroundColor: TColor.cBlackW,
          child: const CustomText(
            text: "2",
            color: TColor.white,
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        const LineContainerW(),
        SizedBox(
          width: 3.w,
        ),
        CircleAvatar(
          radius: 15.r,
          backgroundColor: TColor.cBlackW,
          child: const CustomText(
            text: "3",
            color: TColor.white,
          ),
        ),
      ],
    );
  }
}

class LineContainerW extends StatelessWidget {
  const LineContainerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColor.white,
      width: 20.w,
      height: 3.w,
    );
  }
}
