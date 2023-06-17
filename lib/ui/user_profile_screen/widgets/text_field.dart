import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
class TextFieldScreen extends StatelessWidget {
  TextFieldScreen({Key? key, required this.text, required this.hintText, required this.type}) : super(key: key);
  final String text;
  final String hintText;
  final TextInputType type;
  String onChangedText='';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: AppColors.C_0F172A,
        ),),
        SizedBox(height: 8,),
        TextField(
          onChanged: (v){
            onChangedText=v;
          },
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
          keyboardType: type,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.C_CBD5E1),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColors.C_CBD5E1)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:BorderSide(color:AppColors.C_CBD5E1 )),
            fillColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
