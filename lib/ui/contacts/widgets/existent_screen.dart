import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/ui/contact_info/contact_info_screen.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class ExistentScreen extends StatefulWidget {
  ExistentScreen({Key? key}) : super(key: key);
  String number = "+998 91 565 53 59";
  String name = "my contact";

  @override
  State<ExistentScreen> createState() => _ExistentScreenState();
}

class _ExistentScreenState extends State<ExistentScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 560.h,
        width: double.infinity,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactInfoScreen(),
                  ),
                );
              },
              child: ListTile(
                title: Text(widget.name),
                subtitle: Text(widget.number),
                leading: Image.asset(
                  AppImages.accountCircle,
                  height: 50.h,
                  width: 50.h,
                ),
                trailing: SvgPicture.asset(
                  AppImages.iconPhone,
                  height: 30.h,
                  width: 30.h,
                ),
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
            ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 30.h,
                width: 30.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
