import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToWelcomeScreen(context);

    return const Center(
      child: Scaffold(
        body: Center(
          child: Text("new application",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),),
        ),
      )
    );
  }

  void _navigateToWelcomeScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const HomeScreen();
          },
        ),
      );
    });
  }
}
