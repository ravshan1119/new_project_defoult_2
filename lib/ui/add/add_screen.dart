import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:new_project_defoult_2/ui/add/widgets/images_user.dart';
import 'package:new_project_defoult_2/ui/app_routes.dart';
import 'package:new_project_defoult_2/ui/contacts/contacts_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../data/local/db/local_database.dart';
import '../../models/contact_model/contact_model.dart';
import '../../utils/app_images.dart';

class AddContactScreen extends StatefulWidget {
  AddContactScreen({super.key, required this.listener});

  final VoidCallback listener;
  String imagePath = AppImages.icon1;

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
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

                  ContactModelSql newContact =
                      await LocalDatabase.insertContact(
                    ContactModelSql(
                      phone: "+998$phone",
                      name: nameController.text,
                      imagePath: widget.imagePath,
                    ),
                  );
                  if ((newContact.id != null) && (newContact.id! > 0)) {
                    if (context.mounted) {
                      widget.listener.call();
                      Navigator.pushReplacementNamed(
                          context, RouteNames.contacts);
                    }
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
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ContactsScreen()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Add contact",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(usersIcon.length, (index) {
                    return ZoomTapAnimation(onTap: (){
                      widget.imagePath = usersIcon[index].imagePath;
                    },child: usersIcon[index]);
                  })
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
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

List<ImagesUser> usersIcon = [
  ImagesUser(
    imagePath: AppImages.icon1,
  ),
  ImagesUser(
    imagePath: AppImages.icon2,
  ),
  ImagesUser(
    imagePath: AppImages.icon3,
  ),
  ImagesUser(
    imagePath: AppImages.icon4,
  ),
  ImagesUser(
    imagePath: AppImages.icon5,
  ),
];
