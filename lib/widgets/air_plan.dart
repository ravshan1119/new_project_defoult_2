import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
class AirPlane extends StatelessWidget {
  const AirPlane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height*(92/812),),
          Container(
            height: height * (60 / 812),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.white),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "22 AUG\n\$1070",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_6760D4),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "23 AUG\n\$1114",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_797979),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "24 AUG\n\$1114",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_797979),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "25 AUG\n\$1122",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_797979),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.C_FC9A7D,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6))),
                  width: width * (53 / 375),
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: SvgPicture.asset(AppImages.calendar),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
