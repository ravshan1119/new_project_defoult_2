import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagesUser extends StatelessWidget {
  ImagesUser({required this.imagePath, Key? key}) : super(key: key);
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          )),
    );
  }
}
