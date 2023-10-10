import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/contact_model.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ReorderableListView(
        children: [
          ...List.generate(
            contacts.length,
            (index) => Dismissible(
              background: Container(
                padding: const EdgeInsets.all(14),
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: const Icon(Icons.delete,color: Colors.white,),
              ),
              key: ValueKey(contacts[index].name),
              child: ListTile(
                key: ValueKey(index),
                title: Text(contacts[index].name),
                subtitle: Text(contacts[index].phone),
                trailing: Text(contacts[index].data),
              ),
              onDismissed: (v) {
                setState(() {
                  contacts.removeAt(index);
                });
              },
            ),
          )
        ],
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final ContactModel item = contacts.removeAt(oldIndex);
            contacts.insert(newIndex, item);
          });
        },
      ),
    );
  }
}

List<ContactModel> contacts = [
  ContactModel(name: "name1", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name2", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name3", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name4", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name5", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name6", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name7", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name8", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name9", data: "12:23", phone: "+998333627700"),
  ContactModel(name: "name10", data: "22:55", phone: "+998915655359"),
  ContactModel(name: "name11", data: "22:55", phone: "+998915655359"),
  ContactModel(name: "name12", data: "22:55", phone: "+998915655359"),
];
