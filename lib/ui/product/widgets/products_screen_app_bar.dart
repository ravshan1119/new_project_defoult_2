import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactsScreenAppBar extends StatelessWidget implements PreferredSize {
  const ContactsScreenAppBar(
      {super.key, required this.onSearchTap});

  final VoidCallback onSearchTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      systemOverlayStyle:
      const SystemUiOverlayStyle(statusBarColor: Colors.white),
      actions: [
        IconButton(
          onPressed: onSearchTap,
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
      title: const Text(
        "Products",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}