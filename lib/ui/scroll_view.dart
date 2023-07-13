import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/ui/widgets/fast_food_types.dart';
import 'package:new_project_defoult_2/ui/widgets/scroll_list_view_horizont.dart';
import 'package:new_project_defoult_2/ui/widgets/sliver_row_text.dart';
import 'package:new_project_defoult_2/ui/widgets/sliver_text.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ScrollViewScreen extends StatefulWidget {
  const ScrollViewScreen({Key? key}) : super(key: key);

  @override
  State<ScrollViewScreen> createState() => _ScrollViewScreenState();
}

class _ScrollViewScreenState extends State<ScrollViewScreen> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  final List<Widget> _children = const [
    Text(
      "",
      style: optionStyle,
    ),
    Text(
      "",
      style: optionStyle,
    ),
    Text(
      "",
      style: optionStyle,
    ),
    Text(
      "",
      style: optionStyle,
    ),
    Text(
      "",
      style: optionStyle,
    )
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xFF111015)),
      ),
      backgroundColor: const Color(0xFF111015),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                "Привет, Максим",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(),
            backgroundColor: const Color(0xFF111015),
            actions: [
              SizedBox(
                height: 36.h,
                width: 36.h,
                child: SvgPicture.asset(AppImages.searchIcon),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 16.w,
                  left: 11.w,
                ),
                child: SizedBox(
                  height: 36.h,
                  width: 36.h,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(AppImages.profileImage)),
                ),
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                bottom: 10.h, left: 10.w, right: 10.w, top: 9.h),
            sliver: SliverPersistentHeader(
              delegate: SliverRowText(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                bottom: 20.h, top: 10.h),
            sliver: SliverPersistentHeader(
              delegate: SliverListViewHorizontal(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w,),
            sliver: SliverPersistentHeader(
              delegate: SliverText(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 11.h,bottom: 26.h),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: FastFoodTypes(),
            ),
          ),



          SliverPadding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w,),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: const Color(0xFF22222A),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ZoomTapAnimation(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 11),
                                child: SizedBox(
                                  height: 99.h,
                                  width: 129.w,
                                  child: Image.asset(AppImages.burger1),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                child: SizedBox(
                                  height: 22.sp,
                                  child: Text(
                                    "Чикен Бургер",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                child: SizedBox(
                                  height: 40.sp,
                                  child: Text(
                                    "Котлета куриная, свежие  овощи, сыр чеддер, соус  для бургера",
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff6A6A6E),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₽160",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 23.w,
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
                              width: 6.w,
                            ),
                            ZoomTapAnimation(
                              onTap: () {},
                              child: Container(
                                  height: 34.h,
                                  width: 34.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(50.sp),
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
                        )
                      ],
                    ),
                  );
                },
                childCount: 50,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14.w,
                crossAxisSpacing: 5.w,
                childAspectRatio: 0.72,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111015),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF111015),
            icon: SvgPicture.asset(AppImages.home),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF111015),
            icon: SvgPicture.asset(AppImages.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF111015),
            icon: Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.sp),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellow, Colors.yellow.shade700])),
                child: Center(
                  child: SvgPicture.asset(AppImages.cart),
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF111015),
            icon: SvgPicture.asset(AppImages.heart),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF111015),
            icon: SvgPicture.asset(AppImages.profile),
            label: '',
          ),
        ],
      ),
    );
  }
}
