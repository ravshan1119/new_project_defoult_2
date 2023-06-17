import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class Country extends StatefulWidget {
  Country({
    required this.image,
    required this.text,
    this.check=false,

    Key? key}) : super(key: key);

  String image;
  String text;
  bool check;
  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: height * (40 / 812),
        width: width - 48,
        child: Row(
          children: [
            SizedBox(height: height*(40/812),width: height*(40/812),
            child: Image.asset(widget.image),),
            SizedBox(width: width*(20/375),),
            Center(
              child: Text(widget.text,style: TextStyle(
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
                      widget.check=!widget.check;
                      setState(() {

                      });
                    },
                    child: SvgPicture.asset(widget.check?AppImages.check:AppImages.oval)))
          ],
        ),
      ),
    );
  }
}
