import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/ui/contact_info/contact_info_screen.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

import '../../../models/contact_model_for_sql/contact_model_for_sql.dart';

class ExistentScreen extends StatefulWidget {
  ExistentScreen({required this.contacts, Key? key}) : super(key: key);
  String number = "";
  String name = "";
  List<ContactModelSql> contacts = [];

  @override
  State<ExistentScreen> createState() => _ExistentScreenState();
}

class _ExistentScreenState extends State<ExistentScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ...List.generate(
          widget.contacts.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactInfoScreen(
                    contactModelSql: widget.contacts[index],
                  ),
                ),
              );
            },
            child: ListTile(
              title: Text(
                widget.contacts[index].name,
                style: const TextStyle(color: Colors.black),
              ),
              subtitle: Text(widget.contacts[index].number),
              leading: Image.asset(
                AppImages.accountCircle,
                height: 50.h,
                width: 50.h,
              ),
              trailing: SvgPicture.asset(
                AppImages.iconPhone,
                height: 24.h,
                width: 24.h,
              ),
            ),
          ),
        )
      ],
    );
  }
}
