import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_defoult_2/ui/add/widgets/text_fields_global.dart';
import 'package:new_project_defoult_2/ui/contacts/contacts_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ContactsScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Add",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.check,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextFieldsGlobal(
              textFieldType: "Name",
              inputType: TextInputType.text,
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFieldsGlobal(
              textFieldType: "Surname",
              inputType: TextInputType.text,
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFieldsGlobal(
              textFieldType: "Phone number",
              inputType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
