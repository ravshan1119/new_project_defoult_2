import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

import '../contacts/contacts_screen.dart';

class ContactInfoScreen extends StatefulWidget {
  ContactInfoScreen({Key? key}) : super(key: key);
  String name = "Bobur Mavlonov";
  String number = "+998 33 362 77 00";

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ContactsScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 10.w),
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 52.h,
          ),
          SizedBox(
            height: 100.h,
            child: Row(
              children: [
                SizedBox(
                  width: 130.w,
                ),
                Image.asset(
                  AppImages.accountCircle,
                  height: 100.h,
                  width: 100.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      AppImages.delete,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      AppImages.edit,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                widget.number,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 50.w,
              ),
              Image.asset(
                AppImages.phone,
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(
                width: 15.w,
              ),
              Image.asset(
                AppImages.message,
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(
                width: 15.w,
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                "call history",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: SizedBox(
                height: 100.h,
                width: 100.h,
                child: Image.asset(
                  AppImages.boxEmpty,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
