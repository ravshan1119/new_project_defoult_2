import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldsGlobal extends StatelessWidget {
  const TextFieldsGlobal({Key? key, required this.textFieldType, required this.inputType})
      : super(key: key);
  final String textFieldType;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textFieldType,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.black),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextField(
            keyboardType: inputType,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "Enter $textFieldType",
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Colors.blueGrey)),
            ),
          ),
        ],
      ),
    );
  }
}
