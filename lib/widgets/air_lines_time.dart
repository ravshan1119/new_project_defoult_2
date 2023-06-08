import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class AirLinesTime extends StatelessWidget {
  const AirLinesTime(
      {Key? key,
      required this.icon,
      required this.companyName,
      required this.time,
      required this.price,
      required this.county1,
      required this.county1time,
      required this.county2,
      required this.county2time, this.days="", required this.stop, required this.info})
      : super(key: key);

  final String icon;
  final String companyName;
  final String time;
  final String price;
  final String county1;
  final String county1time;
  final String county2;
  final String county2time;
  final String days;
  final String stop;
  final String info;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: height * (120 / 812),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(icon,height: 30,width: 30,),
                Text(companyName,style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: AppColors.C_333333
                ),),
                SizedBox(width: 11,),
              ],
            ),
            const SizedBox(height: 6,),
            Center(
              child: Text(time,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColors.C_7F7F7F,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(county1,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.C_555555
                      )),
                      Text(county1time,style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_333333
                      )),
                      Text("",style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.C_EB5757
                      ),)

                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Row(
                              children: [
                                SvgPicture.asset(AppImages.ellipse),
                                SvgPicture.asset(AppImages.line),
                                SvgPicture.asset(AppImages.ellipse),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5,left: width*(90/375)),
                            child: SvgPicture.asset(AppImages.airplane),
                          )
                        ],
                      ),
                      Text(stop,style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.C_7F7F7F,
                      ),),
                    ],
                  ),
                  SizedBox(width: 24,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(county1,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.C_555555
                      )),
                      Text(county1time,style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.C_333333
                      )),
                      Text(days.isNotEmpty?days:"",style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_EB5757
                      ),)

                    ],
                  ),


                ],
              ),
            ),
            const SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImages.info,height: 12,width: 12,),
                      SizedBox(width: 5,),
                      Text(info,style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.C_555555
                      ),)


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Text(price,style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.C_6760D4
                  ),),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
