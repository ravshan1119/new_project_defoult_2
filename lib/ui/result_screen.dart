import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';
import 'package:new_project_defoult_2/model/product_model.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key,
      required this.image,
      required this.productModel,
      required this.info})
      : super(key: key);

  // image: AppImages.iphone,
  // productModel: ProductModel(
  // nomi: "14 pro", eski_narxi: "\$1000", narxi: "\%1100"),
  final String image;
  final ProductModel productModel;
  final String info;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                StorageRepository.putString("image", widget.image);
                StorageRepository.putString("nomi", widget.productModel.nomi);
                StorageRepository.putString("narxi", widget.productModel.narxi);
                StorageRepository.putString("eski_narxi", widget.productModel.eski_narxi);
              },
              child: Icon(Icons.save))
        ],
        title: Text("${widget.productModel.nomi}"),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              )),
          Text("Skidka Narxi: ${widget.productModel.narxi}"),
          Text("Narxi: ${widget.productModel.eski_narxi}"),
          Text("Info: "),
          SizedBox(
            height: 10,
          ),
          Text(widget.info),
        ],
      ),
    );
  }
}
