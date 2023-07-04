import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_images.dart';

class EmptyScreen extends StatefulWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 170.h,
        ),
        Center(
          child: SizedBox(
              height: 100.h,
              width: 100.h,
              child: Image.asset(
                AppImages.boxEmpty,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "You have no contacts yet",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: Colors.grey),
        ),
        const Spacer(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
