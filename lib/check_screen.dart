import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:new_project_defoult_2/utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  final GlobalKey containerKey = GlobalKey();

  Uint8List? imageBytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
              size: 16,
            )),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Chek",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          RepaintBoundary(
            key: containerKey,
            child: Container(
              width: double.infinity,
              // height: 300,
              margin: const EdgeInsets.all(16),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nomi",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "OOO CLICK",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Karta raqami",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "561468***7139",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Summa",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "+ 12 000",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "11.10.2023 10:38",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Xizmat ko'rsatish ofisi",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "105746019",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terminal",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "92801443",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Manzil",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "SHAYXONTOHUR \nTUMANI, DARBOZA \n46",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "To'lov turi",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "Kartani to'ldirish",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tranzaksiys ID",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          "19697666694",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Monitoringda \nkategoriya",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_box_outlined,
                              color: Colors.green,
                            ))
                      ],
                    ),
                  ].divide(const SizedBox(height: 15)),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              saveToGallery();
            },
            child: const Text("Take Screen Shot"),
          ),
          if (imageBytes != null) Image.memory(imageBytes!),
        ],
      ),
    );
  }

  _takeScreenshot<Uint8List>() async {
    RenderRepaintBoundary boundary = containerKey.currentContext!
        .findRenderObject() as RenderRepaintBoundary;
    var im = await boundary.toImage();
    var byteData = await im.toByteData(format: ImageByteFormat.png);
    setState(() {
      imageBytes = byteData!.buffer.asUint8List();
    });
    const String fileName = 'screenshot.png';
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/$fileName';
    File(filePath).writeAsBytesSync(imageBytes!);
    Share.shareFiles([filePath]);
    return byteData!.buffer.asUint8List();
  }

  saveToGallery() async {
    await PermissionUtil.requestAll();
    var pngBytes = await _takeScreenshot();
    var t = await ImageGallerySaver.saveImage(pngBytes);
    print(t["filePath"]);
  }
}
