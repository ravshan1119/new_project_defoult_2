import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:new_project_defoult_2/models/contact_model/contact_model.dart';

import '../../data/local/db/local_database.dart';
import '../contacts/contacts_screen.dart';

class UpdateContactScreen extends StatefulWidget {
  UpdateContactScreen(
      {super.key, required this.listener, required this.contactModelSql});

  final VoidCallback listener;
  ContactModelSql contactModelSql;

  @override
  State<UpdateContactScreen> createState() => _UpdateContactScreenState();
}

class _UpdateContactScreenState extends State<UpdateContactScreen> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '(##) ### - ## - ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              if (nameController.text.isNotEmpty) {
                if (phoneController.text.length == 18) {
                  String phone = phoneController.text.replaceAll(" ", "");
                  phone = phone.replaceAll("(", "");
                  phone = phone.replaceAll(")", "");
                  phone = phone.replaceAll("-", "");
                  if (context.mounted) {
                    LocalDatabase.updateContact(
                        contactsModelSql: ContactModelSql(
                            phone: phone,
                            name: nameController.text,
                            imagePath: widget.contactModelSql.imagePath));
                    widget.listener.call();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return ContactsScreen();
                    }));
                  } else {}
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Telefon nomer to'liq emas!"),
                    ),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Ism kiriting!"),
                  ),
                );
              }
            },
            icon: const Icon(
              Icons.done,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Edit contact",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.next,
              focusNode: nameFocusNode,
              keyboardType: TextInputType.name,
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Contact Name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              textInputAction: TextInputAction.done,
              focusNode: phoneFocusNode,
              inputFormatters: [maskFormatter],
              keyboardType: TextInputType.phone,
              onChanged: (number) {
                if (number.length == 18) {
                  phoneFocusNode.unfocus();
                }
              },
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text("+998"),
                ),
                hintText: " _ _  _ _ _ _ _ ",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
