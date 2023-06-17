import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_colors.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
class TextLieldSearch extends StatelessWidget {
  const TextLieldSearch({Key? key,required this.hintText, required this.type}) : super(key: key);
  final String hintText;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
          keyboardType: type,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.search),
              ),
            ),
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
