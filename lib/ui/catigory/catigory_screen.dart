import 'package:flutter/material.dart';

class CatigoryScreen extends StatelessWidget {
  const CatigoryScreen({Key? key, required this.list}) : super(key: key);
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CATIGORY"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ...List.generate(
              list.length,
              (index) => ListTile(
                    title: Text(list[index]),
                  ))
        ],
      ),
    );
  }
}
