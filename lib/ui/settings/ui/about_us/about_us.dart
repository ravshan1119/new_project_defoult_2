import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/settings/ui/choose_lang.dart';

import '../../../../utils/app_colors.dart';
import '../../../profile/profile.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          "About Us",
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
            SizedBox(
              height: 50,
              width: width - 48,
              child: Text(
                "About Us",
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
                "Help",
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
                "Term and Condition",
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
                "Data Protection",
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
