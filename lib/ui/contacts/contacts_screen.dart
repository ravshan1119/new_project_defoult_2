import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project_defoult_2/data/local/db/local_database.dart';
import 'package:new_project_defoult_2/models/contact_model/contact_model.dart';
import 'package:new_project_defoult_2/ui/add/add_screen.dart';
import 'package:new_project_defoult_2/ui/contact_detail/contact_detail_screen.dart';
import 'package:new_project_defoult_2/ui/contacts/widgets/contact_search_view.dart';
import 'package:new_project_defoult_2/ui/contacts/widgets/empty_screen.dart';

import '../../utils/app_images.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  List<ContactModelSql> contacts = [];
  List<ContactModelSql> allContacts = [];

  List<String> options = <String>[
    'A-Z',
    'Z-A',
    'Default',
  ];
  String dropdownValue = 'Default';

  String searchText = "";

  int selectedMenu = 1;

  _update() async {
    allContacts = await LocalDatabase.getAllContacts();
    contacts = await LocalDatabase.getAllContacts();
    setState(() {});
  }

  _getContactsByAlp(String order) async {
    contacts = await LocalDatabase.getContactsByAlphabet(order);
    setState(() {});
  }

  _getContactsByQuery(String query) async {
    contacts = await LocalDatabase.getContactsByQuery(query);
    setState(() {});
  }

  @override
  void initState() {
    _update();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.grey),
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                searchText = await showSearch(
                  context: context,
                  delegate: ContactSearchView(
                    suggestionList: allContacts.map((e) => e.name).toList(),
                  ),
                );
                if (searchText.isNotEmpty) _getContactsByQuery(searchText);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          SizedBox(width: 10.w),
          PopupMenuButton<int>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onSelected: (int item) {
              setState(() {
                selectedMenu = item;
              });
              if (selectedMenu == 1) {
              } else {
                _getContactsByAlp(selectedMenu == 2 ? "ASC" : "DESC");
              }
            },
            // offset: Offset(-50, 0),
            position: PopupMenuPosition.values.last,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              const PopupMenuItem<int>(
                value: 1,
                child: Text('Delete all'),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text('Sort by A-Z'),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text('Sort by Z-A'),
              ),
            ],
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: contacts.isEmpty
          ? const EmptyScreen()
          : ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...List.generate(
                  contacts.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailScreen(
                            contactModelSql: contacts[index],
                            deleteListener: () {
                              _update();
                              setState(() {
                                print(contacts[index].imagePath);
                              });
                            });
                      }));
                    },
                    child: ListTile(
                      title: Text(
                        contacts[index].name,
                        style: const TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(contacts[index].phone),
                      leading: SizedBox(
                        height: 50.h,
                        width: 50.h,
                        child: Image.asset(
                          contacts[index].imagePath,
                          height: 50.h,
                          width: 50.h,
                        ),
                      ),
                      trailing: SvgPicture.asset(
                        AppImages.iconPhone,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                  ),
                )
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactScreen(listener: () {}),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
