import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/splesh/splesh_screen.dart';

import 'local/storage_repostory.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.getInstance();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpleshScreen(),
    );
  }
}
