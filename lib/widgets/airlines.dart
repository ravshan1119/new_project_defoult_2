import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
class AirLines extends StatelessWidget {
  const AirLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.white,
      height: height*(120/812),

    );
  }
}
