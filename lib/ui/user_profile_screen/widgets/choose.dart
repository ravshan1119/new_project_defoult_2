import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key, required this.gender, required this.digit})
      : super(key: key);

  final String gender;
  final bool digit;

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * (48 / 812),
      width: width * (156 / 375),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.C_F1F5F9,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 11, left: 16),
            child: widget.digit
                ? SvgPicture.asset(
                    AppImages.check,
                    height: 24,
                    width: 24,
                  )
                : SvgPicture.asset(
                    AppImages.oval,
                    height: 24,
                    width: 24,
                  ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.gender,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.C_0F172A,
            ),
          ),
        ],
      ),
    );
  }
}
