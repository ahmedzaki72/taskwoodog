import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/config/theme_colors.dart';
import 'package:task1/views/custom_widgets/custom_button.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';
import 'package:task1/views/screens/widgets/text_form_container_w.dart';
import 'package:task1/views/screens/widgets/text_form_field_w.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = "sign_in_screen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isSecurity = true;
  String? fullName;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const CustomText(
                    text: "Let’s  start here",
                    fontSize: 34,
                    fontW: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const CustomText(
                    text: "Fill in your details to begin",
                    fontSize: 17,
                    fontW: FontWeight.w500,
                    color: TColor.cLets,
                  ),
                ),
                SizedBox(
                  height: 40.w,
                ),
                Center(
                    child: TextFormContainerW(
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomFormField(
                      labelText: "FullName",
                      labelTextColor: Color(0xffAEAEB2),
                      hintText: "Cristian",
                      validation: "Please Enter Full Name",
                      saved: (value) {
                        fullName = value;
                      },
                    ),
                  ),
                )),
                SizedBox(
                  height: 20.w,
                ),
                Center(
                    child: TextFormContainerW(
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomFormField(
                      labelText: "E-mail",
                      labelTextColor: Color(0xffAEAEB2),
                      hintText: "Cristiandeb13@gmail.com",
                      validation: "Please Enter email",
                      saved: (value) {
                        email = value;
                      },
                    ),
                  ),
                )),
                SizedBox(
                  height: 20.w,
                ),
                Center(
                    child: TextFormContainerW(
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomFormField(
                      labelText: "Password",
                      labelTextColor: Color(0xffAEAEB2),
                      hintText: "Please Enter Password",
                      validation: "Please Enter password",
                      security: isSecurity,
                      saved: (value) {
                        password = value;
                      },
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            isSecurity = !isSecurity;
                          });
                        },
                        child: Icon(isSecurity
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: 40.w,
                ),
                Center(
                  child: CustomButton(
                    text: "Sign up",
                    width: 396,
                    height: 58,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        print(
                            "this is $fullName and this is $email and this is $password ");
                      }
                    },
                    fontSize: 17,
                    radius: 14,
                    fontWeight: FontWeight.w700,
                    borderColor: TColor.meanColor,
                    bgColor: TColor.meanColor,
                  ),
                ),
                SizedBox(
                  height: 40.w,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          text: "By signing in, I agree with ",
                          fontW: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xff8E8E93),
                        ),
                        CustomText(
                          text: "Terms of Use",
                          fontW: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xff2B2B2B),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          text: "and ",
                          fontW: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xff8E8E93),
                        ),
                        CustomText(
                          text: "Privacy Policy",
                          fontW: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xff2B2B2B),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
