import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project_defoult_2/ui/settings/settings_screen.dart';
import 'package:new_project_defoult_2/ui/settings/ui/widgets/county.dart';
import 'package:new_project_defoult_2/ui/settings/ui/widgets/text.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

import '../../../utils/app_colors.dart';
class ChooseLanguage extends StatefulWidget {
   ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return SettingsScreen();
              }));
            },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black87,)),

        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Choose your language",
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
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: height*(36/812),),
            TextLieldSearch(hintText: "Search", type: TextInputType.text),
            SizedBox(height: height*(20/812),),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png1),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("USA",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==0){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }
                              map[0]=map[0]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[0]!=0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png2),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("Russia",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("ru","RU"));
                              for(int i=0; i<map.length; i++){
                                if(i==1){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[1]=map[1]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[1] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png3),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("Uzbekistan",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("uz","UZ"));
                              for(int i=0; i<map.length; i++){
                                if(i==2){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[2]=map[2]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[2] != 0 ?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png4),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("Ireland",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==3){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[3]=map[3]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[3] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png5),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("German",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==4){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[4]=map[4]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[4] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png6),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("Malaysia",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==5){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[5]=map[5]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[5] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png7),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("America",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==6){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[6]=map[6]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[6] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png8),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("Belgia",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==7){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[7]=map[7]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[7] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: height * (40 / 812),
                width: width - 48,
                child: Row(
                  children: [
                    SizedBox(height: height*(40/812),width: height*(40/812),
                      child: Image.asset(AppImages.png9),),
                    SizedBox(width: width*(20/375),),
                    Center(
                      child: Text("New Zeland",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_0F172A,
                      ),),
                    ),
                    Spacer(),
                    SizedBox(
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                            onTap: (){
                              context.setLocale(Locale("en","EN"));
                              for(int i=0; i<map.length; i++){
                                if(i==8){
                                  continue;
                                }else{
                                  map[i]=0;
                                }
                              }

                              map[8]=map[8]==0?1:0;
                              setState(() {

                              });
                            },
                            child: SvgPicture.asset(map[8] != 0?AppImages.check:AppImages.oval)))
                  ],
                ),
              ),
            ),

          ],
        )
      ),

    );
  }
}

Map<int,int> map = {
  1:0,
  2:0,
  3:0,
  4:0,
  5:0,
  6:0,
  7:0,
  8:0,
  9:0,
};
