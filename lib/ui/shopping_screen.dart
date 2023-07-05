import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';

class ShoppingScreen extends StatefulWidget {
   ShoppingScreen({Key? key}) : super(key: key);
  String narxi = StorageRepository.getString("narxi");


  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int count = 1;

  @override
  void initState() {
    String image = StorageRepository.getString("image");
    String nomi = StorageRepository.getString("nomi");
    String narxi = StorageRepository.getString("narxi");
    String eski_narxi = StorageRepository.getString("eski_narxi");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("carts"),
      ),
      body: Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (v) {
                StorageRepository.deleteString("image");
                StorageRepository.deleteString("nomi");
                StorageRepository.deleteString("narxi");
                StorageRepository.deleteString("eski_narxi");
                setState(() {});
              },
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              flex: 2,
              onPressed: (v) {
                StorageRepository.deleteString("image");
                StorageRepository.deleteString("nomi");
                StorageRepository.deleteString("narxi");
                StorageRepository.deleteString("eski_narxi");
                setState(() {});
              },
              backgroundColor: Color(0xFF7BC043),
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Archive',
            ),
          ],
        ),
        child: StorageRepository.getString("image").isNotEmpty
            ? ListTile(
                title: Row(
                  children: [
                    Text(
                      StorageRepository.getString("nomi"),
                      style: TextStyle(color: Colors.black),
                    ),
                    Text('   count: $count'),
                    IconButton(
                        onPressed: () {
                          count--;

                          setState(() {});
                        },
                        icon: const Icon(Icons.remove)),
                    IconButton(
                        onPressed: () {
                          count++;
                          setState(() {
                          });
                        },
                        icon: const Icon(Icons.add)),
                  ],
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(StorageRepository.getString("image")),
                ),
                trailing: Text(widget.narxi),
              )
            : ListTile(),
      ),
    );
  }
}
