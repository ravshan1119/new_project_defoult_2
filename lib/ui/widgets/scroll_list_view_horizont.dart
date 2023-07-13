import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SliverListViewHorizontal extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: [
        ...List.generate(
          4,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Container(
              height: 136.h,
              width: 282.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: const Color(0xFF22222A),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 66.h,
                    width: 87.w,
                    child: Image.asset(AppImages.burger2),
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 11.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Чикен Бургер",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 39.w,
                          ),
                          SizedBox(
                              height: 19.h,
                              width: 19.h,
                              child: SvgPicture.asset(AppImages.heart))
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Котлета куриная, свежие овощи, сыр чеддер,  соус для бургера",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff6A6A6E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₽160",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 52.w,
                          ),
                          Container(
                            height: 18.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: const Color(0xFF16151B),
                            ),
                            child: Center(
                              child: Text(
                                "300g",
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF6A6A6E),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          ZoomTapAnimation(
                            onTap: () {},
                            child: Container(
                                height: 34.h,
                                width: 34.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.sp),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.yellow,
                                          Colors.yellow.shade700
                                        ])),
                                child: Center(
                                    child: SvgPicture.asset(AppImages.add))),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => 136;

  @override
  double get minExtent => 136;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
