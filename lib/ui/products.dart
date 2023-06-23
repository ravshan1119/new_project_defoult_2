import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project_defoult_2/local/storage_repostory.dart';
import 'package:new_project_defoult_2/model/product_model.dart';
import 'package:new_project_defoult_2/ui/profile_screen.dart';
import 'package:new_project_defoult_2/ui/result_screen.dart';
import 'package:new_project_defoult_2/utils/app_images.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        centerTitle: true,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
      ),
      body: SizedBox(
        width: double.infinity - 50,
        child: GridView(
          physics: BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.7),
          children: [
            ProductsContainer(
              image: AppImages.airpods,
              productModel: ProductModel(
                  nomi: "Airpods", eski_narxi: "\$90", narxi: "\%110"),
              voidCallback: () {
                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
            ProductsContainer(
              image: AppImages.pc,
              productModel:
                  ProductModel(nomi: "PC", eski_narxi: "\$450", narxi: "\%600"),
              voidCallback: () {
                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
            ProductsContainer(
              image: AppImages.mac,
              productModel: ProductModel(
                  nomi: "Mac", eski_narxi: "\$1000", narxi: "\%1100"),
              voidCallback: () {

                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
            ProductsContainer(
              image: AppImages.keyboardMouse,
              productModel: ProductModel(
                  nomi: "oppo", eski_narxi: "\$90", narxi: "\%110"),
              voidCallback: () {
                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
            ProductsContainer(
              image: AppImages.iphone,
              productModel: ProductModel(
                  nomi: "14 pro", eski_narxi: "\$1000", narxi: "\%1100"),
              voidCallback: () {
                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
            ProductsContainer(
              image: AppImages.speaker,
              productModel: ProductModel(
                  nomi: "Speaker", eski_narxi: "\$90", narxi: "\%110"),
              voidCallback: () {
                if (StorageRepository.getBool("check") == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<ProductsContainer> products = [];

class ProductsContainer extends StatelessWidget {
  const ProductsContainer({
    Key? key,
    required this.image,
    required this.productModel,
    required this.voidCallback,
  }) : super(key: key);
  final String image;
  final ProductModel productModel;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: voidCallback,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurple),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 150,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Nomi: ${productModel.nomi}",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.orangeAccent),
                ),
                Text(
                  "Skidka Narxi: ${productModel.eski_narxi}",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.red),
                ),
                Text(
                  "Nomi: ${productModel.narxi}",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
