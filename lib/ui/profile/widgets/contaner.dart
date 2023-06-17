import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
class Contaner extends StatelessWidget {
  const Contaner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*(85/812),
      width: width-48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF52B6DF),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 14),
                child: SvgPicture.asset(AppImages.group),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: SvgPicture.asset(AppImages.ellipse3),
                        right: 0,
                      ),
                      Positioned(
                          right: 0,
                          child: SvgPicture.asset(AppImages.ellipse2)),
                      Positioned(
                          right: 0,
                          child: SvgPicture.asset(AppImages.ellipse)),
                      Positioned(
                        child: Center(
                          child: Text(
                            "How can we help you?",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              fontFamily: "Poppins",
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              )

            ],
          ),
        ]
      ),
    );
  }
}
