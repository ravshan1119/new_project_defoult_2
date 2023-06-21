import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.catigory,arguments: [
              "salom",
              "nimadur",
              "qwerty",
            ]);
          },
          child: SizedBox(
              height: 50,
              width: double.infinity - 50,
              child: Center(child: Text("ok")))),
    );
  }
}
