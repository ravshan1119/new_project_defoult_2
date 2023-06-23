import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';
import 'package:new_project_defoult_2/ui/tabs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  StorageRepository.getInstance();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarScreen(),
    );
  }
}
