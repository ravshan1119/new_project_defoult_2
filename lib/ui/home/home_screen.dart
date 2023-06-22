import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';
import 'package:new_project_defoult_2/ui/screen/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = '';
  String surname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [

          TextField(
            onChanged: (v) {
              name = v;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (v) {
              surname = v;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Surname',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    if (name.isEmpty) {}
                    setState(() {
                      StorageRepository.putString("name", name);
                      StorageRepository.putString("surname", surname);
                    });
                    setState(() {});
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen()));
                  },
                  child: Text("Go Second Page")),
            ],
          ),
        ],
      ),
    );
  }
}
