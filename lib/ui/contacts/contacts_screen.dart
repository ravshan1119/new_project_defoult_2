import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_defoult_2/ui/add/add_screen.dart';
import 'package:new_project_defoult_2/ui/contacts/widgets/empty_screen.dart';
import 'package:new_project_defoult_2/ui/contacts/widgets/existent_screen.dart';

class ContactsScreen extends StatefulWidget {
  ContactsScreen({Key? key}) : super(key: key);

  bool checkEmpty = false;

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 10.w),
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: widget.checkEmpty ? const EmptyScreen() : ExistentScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
