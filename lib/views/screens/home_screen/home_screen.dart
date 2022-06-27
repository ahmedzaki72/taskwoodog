import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/views/screens/widgets/custom_home_header_w.dart';
import 'package:task1/views/screens/widgets/custom_slider_w.dart';
import 'package:task1/views/screens/widgets/custom_title_w.dart';
import 'package:task1/views/screens/widgets/text_form_container_w.dart';
import 'package:task1/views/screens/widgets/text_form_field_w.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.w,
              ),
              const CustomHomeHeaderW(),
              SizedBox(
                height: 30.w,
              ),
              TextFormContainerW(
                height: 43.5,
                widget: CustomFormField(
                  prefix: Icon(
                    Icons.location_on_outlined,
                  ),
                  hintText: "Kiyv, Ukraine",
                  hintTextColor: Color(0xffA1A1A1),
                  suffix: Icon(Icons.manage_search_outlined),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(
                height: 50.w,
              ),
              CustomTitleW(
                title: "Near you",
                click: "View all",
                onTap: () {},
              ),
              SizedBox(
                height: 10.w,
              ),
              const CustomSliderW(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: const Divider(
                  color: Color(0xffE8E8E8),
                  thickness: 2,
                ),
              ),
              CustomTitleW(
                title: "Suggested",
                click: "View all",
                onTap: () {},
              ),
              SizedBox(
                height: 10.w,
              ),
              const CustomSliderW(),
              SizedBox(
                height: 50.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
