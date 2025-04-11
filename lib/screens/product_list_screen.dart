import 'package:flutter/material.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: const [
          ProductItem(name: 'Orange', stock: '1000 ready stock', price: '15'),
          ProductItem(name: 'Apple', stock: '1000 ready stock', price: '20'),
          ProductItem(name: 'Banana', stock: '1000 ready stock', price: '5'),
          ProductItem(name: 'Mango', stock: '1000 ready stock', price: '15'),
          ProductItem(name: 'Orange', stock: '1000 ready stock', price: '10'),
        ],
      ),
    );
  }
}
