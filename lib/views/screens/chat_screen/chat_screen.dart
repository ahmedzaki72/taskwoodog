import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/views/custom_widgets/custom_text.dart';
import 'package:task1/views/screens/widgets/text_form_container_w.dart';
import 'package:task1/views/screens/widgets/text_form_field_w.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const CustomText(
                  text: "Chat",
                  fontSize: 34,
                  fontW: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              Center(
                child: TextFormContainerW(
                  height: 43.5,
                  widget: CustomFormField(
                    prefix: Icon(
                      Icons.search_outlined,
                    ),
                    hintText: "Search",
                    hintTextColor: Color(0xffA1A1A1),
                    suffix: Icon(Icons.manage_search_outlined),
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30.w,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.w),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/avatar.png"),
                        ),
                        title: CustomText(
                          text: "Will Knowles",
                          fontW: FontWeight.w700,
                          fontSize: 20,
                        ),
                        subtitle: CustomText(
                          text: "Hey! How’s your dog? ∙ 1min",
                          fontW: FontWeight.w500,
                          fontSize: 17,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(0xffECEEF1),
                      thickness: 2,
                    );
                  },
                  itemCount: 20),
            ],
          ),
        ),
      ),
    );
  }
}
