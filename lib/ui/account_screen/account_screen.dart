import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project_defoult_2/ui/user_profile_screen/widgets/text_field.dart';

import '../../utils/app_colors.dart';
import '../profile/profile.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white ),
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Profile();
              }));
            },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black87,)),

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
            SizedBox(height: height*(36/812),),
            TextFieldScreen(text: "Old Password", hintText: "Old Password", type: TextInputType.visiblePassword),
            SizedBox(height: height*(16/812),),

            TextFieldScreen(text: "New Password", hintText: "New Password", type: TextInputType.visiblePassword),
            SizedBox(height: height*(16/812),),

            TextFieldScreen(text: "Confirm Password", hintText: "Confirm Password", type: TextInputType.visiblePassword),
            SizedBox(height: height*(24/812),),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width-48, height*(56/812)),
                  backgroundColor: AppColors.C_52B6DF,
                ),
                onPressed: () {},
                child: Text(
                  "Update Password",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),


          ],
        ),
      ),
    );
  }
}
