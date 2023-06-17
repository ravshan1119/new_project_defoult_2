import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
class UserInfo extends StatefulWidget {
  const UserInfo({Key? key, required this.text, required this.icon, required this.onTap, }) : super(key: key);
  final String text;
  final String icon;
  final VoidCallback onTap;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.5),
      child: GestureDetector(
        onTap: widget.onTap,
        child: SizedBox(
          height: height*(65/812),
          width: width-48,
          child: Row(
            children: [
              Container(
                height: height*(40/812),
                width: height*(40/812),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFDCF0F9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(widget.icon),
                ),
              ),
              SizedBox(width: width*(14/375),),
              Text(
                widget.text,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: "Poppins",
                  color: Color(0xFF0F172A),
                ),
              ),
              Spacer(),
              SvgPicture.asset(AppImages.vector)

            ],
          ),
        ),
      ),
    );
  }
}
