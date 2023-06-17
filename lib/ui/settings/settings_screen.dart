import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project_defoult_2/ui/settings/ui/choose_lang.dart';

import '../../utils/app_colors.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black87,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Account",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.C_000000,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: height * (36 / 812),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChooseLanguage();
                }));
              },
              child: SizedBox(
                height: 50,
                width: width - 48,
                child: Text(
                  "App language",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontFamily: "Poppins",
                      color: AppColors.C_0F172A),
                ),
              ),
            ),
            Container(
              height: 1,
              color: AppColors.C_F1F5F9,
            ),
            SizedBox(
              height: height * (24 / 812),
            ),
            SizedBox(
              height: 50,
              width: width - 48,
              child: Text(
                "Notification",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: "Poppins",
                    color: AppColors.C_0F172A),
              ),
            ),
            Container(
              height: 1,
              color: AppColors.C_F1F5F9,
            ),
            SizedBox(
              height: height * (24 / 812),
            ),
            SizedBox(
              height: 50,
              width: width - 48,
              child: Text(
                "Update version",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: "Poppins",
                    color: AppColors.C_0F172A),
              ),
            )
          ],
        ),
      ),
    );
  }
}
