import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/catigory/catigory_screen.dart';
import 'package:new_project_defoult_2/ui/home/home_screen.dart';

class RouteNames {
  static const String initial = "/";
  static const String catigory = "/catigory";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.catigory:
        return MaterialPageRoute(
            builder: (context) => CatigoryScreen(
                  list: settings.arguments as List<String>,
                ));
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("Route mavjud emas!"),
            ),
          ),
        );
    }
  }
}
