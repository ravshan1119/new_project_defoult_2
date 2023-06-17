import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/ui/account_screen/account_screen.dart';
import 'package:new_project_defoult_2/ui/profile/widgets/bar.dart';
import 'package:new_project_defoult_2/ui/profile/widgets/contaner.dart';
import 'package:new_project_defoult_2/ui/profile/widgets/user_info.dart';
import 'package:new_project_defoult_2/ui/settings/settings_screen.dart';
import 'package:new_project_defoult_2/ui/settings/ui/about_us/about_us.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

import '../user_profile_screen/user_profile_screen.dart';

class Profile extends StatefulWidget {
   Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: height * (40 / 812),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.logo),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    tr("Study"),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontFamily: "Poppins",
                      color: Color(0xFF0F172A),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              Container(
                height: 1,
                color: Color(0xFFF1F5F9),
              ),
              SizedBox(
                height: height * (15 / 812),
              ),
              Row(
                children: [
                  Container(
                    height: height * (58 / 812),
                    width: height * (58 / 812),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(AppImages.profile)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr("welcome"),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          color: Color(0xFF64748B),
                        ),
                      ),
                      Text(
                        "Marvin McKinney",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          fontFamily: "Poppins",
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: height * (40 / 812),
                    width: height * (40 / 812),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(AppImages.signOut),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * (20 / 812),
              ),
              Container(
                height: 1,
                color: Color(0xFFF1F5F9),
              ),
              SizedBox(height: height*(340/812),
              width: width-48,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      UserInfo(
                        icon: AppImages.user,
                        text: "Profile",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return UserProfileScreen();
                              }));
                        },
                      ),
                      UserInfo(
                        icon: AppImages.sheild_check,
                        text: "Account",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return AccountScreen();
                              }));
                        },
                      ),
                      UserInfo(
                        icon: AppImages.settings,
                        text: "Setting",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SettingsScreen();
                              }));
                        },
                      ),
                      UserInfo(
                        icon: AppImages.about,
                        text: "About",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return AboutUs();
                              }));
                        },
                      ),
                    ],
                  )
                ],
              ),),
              Contaner(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      color: Color(0xFF64748B),
                    ),
                  ),
                  SizedBox(
                    width: width * (8 / 812),
                  ),
                  SvgPicture.asset(AppImages.vector),
                  SizedBox(
                    width: width * (30 / 812),
                  ),
                  Text(
                    "Terms",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      color: Color(0xFF64748B),
                    ),
                  ),
                  SizedBox(
                    width: width * (8 / 812),
                  ),
                  SvgPicture.asset(AppImages.vector),
                  SizedBox(
                    width: width * (30 / 812),
                  ),
                  Text(
                    "English",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      color: Color(0xFF64748B),
                    ),
                  ),
                  SizedBox(
                    width: width * (8 / 812),
                  ),
                  SvgPicture.asset(AppImages.vector_down),
                ],
              ),
              Spacer(),
              Bar(),
            ],
          ),
        ),
      ),
    );
  }
}
