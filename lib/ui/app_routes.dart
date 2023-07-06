import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/models/contact_model/contact_model.dart';
import 'package:new_project_defoult_2/ui/contacts/contacts_screen.dart';
import 'package:new_project_defoult_2/ui/update_contact/update_contac_screen.dart';

import 'add/add_screen.dart';
import 'contact_detail/contact_detail_screen.dart';

class RouteNames {
  static const String contacts = "/";
  static const String addContact = "/add_contact";
  static const String contactDetails = "/contact_details";
  static const String contactUpdate = "/contact_update";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.contacts:
        return MaterialPageRoute(builder: (context) => ContactsScreen());
      case RouteNames.addContact:
        return MaterialPageRoute(builder: (context) {
          return AddContactScreen(
            listener: settings.arguments as VoidCallback,
          );
        });
      case RouteNames.contactUpdate:
        return MaterialPageRoute(
            builder: (context) => UpdateContactScreen(
                  listener: settings.arguments as VoidCallback,
                  contactModelSql: settings.arguments as ContactModelSql,
                ));
      case RouteNames.contactDetails:
        return MaterialPageRoute(builder: (context) {
          Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;
          return ContactDetailScreen(
            deleteListener: map["deleteListener"],
            contactModelSql: map["contactModelSql"],
          );
        });
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route mavjud emas"),
            ),
          ),
        );
    }
  }
}
