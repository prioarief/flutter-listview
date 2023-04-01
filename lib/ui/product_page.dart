import 'package:flutter/material.dart';
import 'package:tugas4/ui/product_form.dart';

class ProductPage extends StatelessWidget {
  final data = [
    {"product_name": "Macbook M2 Pro", "product_price": "Rp. 21.000.000"},
    {"product_name": "Macbook M1 Pro", "product_price": "Rp. 19.000.000"},
    {"product_name": "Macbook Air", "product_price": "Rp. 18.000.000"},
    {"product_name": "Asus ROG", "product_price": "Rp. 18.000.000"},
  ];

  // const ProductPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
          actions: [
            GestureDetector(
              child: const Icon(Icons.back_hand),
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductForm()));
              },
            )
          ],
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(data[index]["product_name"]!),
                ),
              );
            }),
      ),
    );
  }
}
