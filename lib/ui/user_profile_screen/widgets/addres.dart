import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("1106 Sunrise Road Las Vegas, NV 89102",style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: AppColors.C_0F172A
        ),),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.C_F1F5F9
      ),
      height: height*(100/812),
      width: double.infinity,
    );
  }
}
