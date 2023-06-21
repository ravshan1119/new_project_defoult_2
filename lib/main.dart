import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.initial,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
