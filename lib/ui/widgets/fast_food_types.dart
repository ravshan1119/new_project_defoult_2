import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FastFoodTypes extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: [
        ZoomTapAnimation(
          onTap: (){},
          child: Container(
              height: 28.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.yellow, Colors.yellow.shade700])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(AppImages.burger3),
                  ),
                  Text(
                    "Бургеры",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                ],
              )),
        ),
        ...List.generate(
          4,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: ZoomTapAnimation(
              onTap: (){},
              child: Container(
                  height: 28.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: const Color(0xFF22222A),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(AppImages.burger3),
                      ),
                      Text(
                        "Бургеры",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => 28.h;

  @override
  double get minExtent => 28.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
