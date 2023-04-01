import 'package:flutter/material.dart';
import 'package:tugas4/ui/product_detail.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key}) : super(key: key);

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _productCodeController = TextEditingController();
  final _productNameController = TextEditingController();
  final _productPriceController = TextEditingController();
  final _productStockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Form Produk')),
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(children: [
              _renderTextBoxProductCode(),
              _renderTextBoxProductName(),
              _renderTextBoxProductPrice(),
              _renderTextBoxProductStock(),
              _renderSaveButton()
            ])));
  }

  _renderTextBoxProductCode() {
    return TextField(
        decoration: const InputDecoration(
            hintText: 'Masukan Kode Produk', labelText: 'Kode Produk'),
        controller: _productCodeController);
  }

  _renderTextBoxProductName() {
    return TextField(
        decoration: const InputDecoration(
            hintText: 'Masukan Nama Produk', labelText: 'Nama Produk'),
        controller: _productNameController);
  }

  _renderTextBoxProductPrice() {
    return TextField(
        decoration: const InputDecoration(
            hintText: 'Masukan Harga Produk', labelText: 'Harga Produk'),
        keyboardType: TextInputType.number,
        controller: _productPriceController);
  }

  _renderTextBoxProductStock() {
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Masukan Stok', labelText: 'Stok Produk'),
      keyboardType: TextInputType.number,
      controller: _productStockController,
    );
  }

  _renderSaveButton() {
    return ElevatedButton(
        onPressed: _handleSaveButton, child: const Text('Simpan'));
  }

  _handleSaveButton() {
    String productCode = _productCodeController.text;
    String productName = _productNameController.text;
    int productPrice = int.parse(_productPriceController.text);
    int productStock = int.parse(_productStockController.text);

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetail(
              productCode: productCode,
              productName: productName,
              productPrice: productPrice,
              productStock: productStock,
            )));
  }
}
