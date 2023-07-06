import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_defoult_2/data/local/db/local_database.dart';
import 'package:new_project_defoult_2/models/contact_model/contact_model.dart';
import 'package:new_project_defoult_2/ui/app_routes.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetailScreen extends StatefulWidget {
  ContactDetailScreen(
      {Key? key, required this.contactModelSql, required this.deleteListener})
      : super(key: key);
  String name = "";
  String number = "";

  final ContactModelSql contactModelSql;
  final VoidCallback deleteListener;

  @override
  State<ContactDetailScreen> createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, RouteNames.contacts);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 52.h,
          ),
          SizedBox(
            height: 100.h,
            child: Row(
              children: [
                SizedBox(
                  width: 130.w,
                ),
                Image.asset(
                  AppImages.accountCircle,
                  height: 100.h,
                  width: 100.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        AppImages.delete,
                        height: 24.h,
                        width: 24.h,
                      ),
                      onTap: () async {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text('Do you want to delete the contact?'),
                                  content:
                                      const Text(''),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        int deletedId =
                                            await LocalDatabase.deleteContact(
                                                widget.contactModelSql.id!);
                                        if (deletedId > 0) {
                                          widget.deleteListener.call();
                                          if (context.mounted) {
                                            Navigator.pop(context);
                                          }
                                        }

                                        Navigator.pop(context, 'OK');
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ));
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        AppImages.edit,
                        height: 24.h,
                        width: 24.h,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.contactUpdate);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              widget.contactModelSql.name,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                widget.contactModelSql.phone,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 50.w,
              ),
              GestureDetector(
                onTap: () async {
                  await launchUrl(
                      Uri.parse("tel:${widget.contactModelSql.phone}"));
                },
                child: Image.asset(
                  AppImages.phone,
                  height: 40.h,
                  width: 40.h,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              GestureDetector(
                onTap: () async {
                  String sms = widget.contactModelSql.phone.replaceAll("+", "");
                  print(sms);
                  await launchUrl(Uri.parse("sms:$sms"));
                },
                child: Image.asset(
                  AppImages.message,
                  height: 40.h,
                  width: 40.h,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              const Text(
                "call history",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
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
        ],
      ),
    );
  }
}
