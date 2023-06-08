import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/model/products.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Products"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      ...List.generate(products.length, (index){
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          height: 50,
                          width: 150,
                          child: Center(
                            child: Text(products[index].name,style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),),
                          ),
                        );
                      })
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height-200,
              child: ListView(children: [
                Column(
                  children: [
                    ...List.generate(products.length, (index) {
                      return Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(products[index].image),
                              ),
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                products[index].name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              products[index].price,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.green),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      );
                    })
                  ],
                ),
              ]),
            ),
          ],
        )
      ),
    );
  }
}

List<Products> products = [
  Products(
      price: "80 000 som",
      image: "assets/images/product1.jpg",
      name: "Kir yuvish vositasi"),
  Products(
      price: "12 000 som",
      image: "assets/images/product2.jpg",
      name: "Colgate"),
  Products(
      price: "99 000 som", image: "assets/images/product3.jpg", name: "shampun")
];
