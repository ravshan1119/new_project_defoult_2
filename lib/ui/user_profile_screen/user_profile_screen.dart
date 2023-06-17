import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/ui/profile/profile.dart';
import 'package:new_project_defoult_2/ui/user_profile_screen/widgets/addres.dart';
import 'package:new_project_defoult_2/ui/user_profile_screen/widgets/choose.dart';
import 'package:new_project_defoult_2/ui/user_profile_screen/widgets/text_field.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class UserProfileScreen extends StatefulWidget {
  UserProfileScreen({Key? key}) : super(key: key);
  bool  digit=true;
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Profil",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.C_000000,
          ),
        ),
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Profile();
              }));
            },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black87,)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(

            physics: BouncingScrollPhysics(),
            children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * (52 / 812),
              ),
              Center(
                child: SizedBox(
                  height: height * (80 / 812),
                  width: height * (91 / 812),
                  child: Stack(children: [
                    Container(
                      height: height * (80 / 812),
                      width: height * (80 / 812),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(AppImages.profile),
                    ),
                    Positioned(
                        right: 6,
                        top: 6,
                        child: SvgPicture.asset(
                          AppImages.camera,
                          height: 32,
                          width: 32,
                        )),
                  ]),
                ),
              ),
              SizedBox(
                height: height * (40 / 812),
              ),
              TextFieldScreen(
                text: "Name",
                hintText: "Marvin McKinney",
                type: TextInputType.name,
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              TextFieldScreen(
                text: "Email",
                hintText: "marvin@email.com",
                type: TextInputType.emailAddress,
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              TextFieldScreen(
                text: "Date of birth",
                hintText: "11/08/1997",
                type: TextInputType.datetime,
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              TextFieldScreen(
                text: "Phone Number",
                hintText: "702-889-5347",
                type: TextInputType.number,
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              TextFieldScreen(
                text: "Student ID",
                hintText: "#87654",
                type: TextInputType.number,
              ),
              SizedBox(
                height: height * (16 / 812),
              ),
              Text(
                "Gender",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.C_0F172A,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.digit=!widget.digit;
                          setState(() {});
                        });
                      },
                      child: Choose(
                        gender: "Male",
                        digit: widget.digit,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.digit=!widget.digit;
                          setState(() {});
                        });
                      },
                      child: Choose(
                        gender: "Female",
                        digit: !widget.digit,
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Gender",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.C_0F172A,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Address(),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width-48, height*(56/812)),
                  backgroundColor: AppColors.C_52B6DF,
                ),
                  onPressed: () {},
                  child: Text(
                    "Update Profil",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              SizedBox(height: height*(26/812),),
            ],
          ),
        ]),
      ),
    );
  }
}
