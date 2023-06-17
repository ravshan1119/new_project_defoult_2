import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height*(85/812),
      width: width-70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 24,width: 24,child: SvgPicture.asset(AppImages.apps),),
          SizedBox(height: 24,width: 24,child: SvgPicture.asset(AppImages.calendar),),
          SizedBox(height: 24,width: 24,child: SvgPicture.asset(AppImages.comment),),
          SizedBox(height: 24,width: 24,child: SvgPicture.asset(AppImages.user2),),
        ],
      ),
    );
  }
}
