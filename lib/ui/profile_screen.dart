import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    String password = "";
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (v) {
              name = v;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (v) {
              password = v;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'password',
            ),
          ),
          Text(
            "Name:  ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            "Parol:  ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (name != "" && password != "") {
                    StorageRepository.putString("name", name);
                    StorageRepository.putString("password", password);
                    StorageRepository.putBool("check", true);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.indigoAccent,
                        content: Text('Name yoki Password kiritilmagan!'),
                      ),
                    );
                  }
                });
              },
              child: Text("done")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  StorageRepository.deleteString("name");
                  StorageRepository.deleteString("password");
                  StorageRepository.deleteBool("check");
                });
              },
              child: Text("delete")),
        ],
      ),
    );
  }
}
