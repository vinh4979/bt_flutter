import 'package:flutter/material.dart';

import '../models/shoe.dart';
import '../widgets/cart_item.dart';
import '../widgets/shoe_list.dart';

class ShoeStoreScreen extends StatefulWidget {
  const ShoeStoreScreen({super.key});

  @override
  State<ShoeStoreScreen> createState() => _ShoeStoreScreenState();
}

class _ShoeStoreScreenState extends State<ShoeStoreScreen> {
  final List<Shoe> _products = [
    Shoe(name: "Nike Air Max", price: 120.0, imageUrl: "assets/shoe/nike.avif"),
    Shoe(
      name: "Adidas Ultraboost",
      price: 150.0,
      imageUrl: "assets/shoe/addidas.jpeg",
    ),
    Shoe(name: "Converse", price: 90.0, imageUrl: "assets/shoe/converse.webp"),
    Shoe(name: "Rick Owens", price: 990.0, imageUrl: "assets/shoe/rick.webp"),
    Shoe(name: "Saint Laurent", price: 550.0, imageUrl: "assets/shoe/ysl.jpg"),
    Shoe(name: "Jordan", price: 400.0, imageUrl: "assets/shoe/jordan.jpeg"),
  ];

  final List<Shoe> _cart = [];

  void _addToCart(Shoe shoe) {
    setState(() {
      final index = _cart.indexWhere((item) => item.name == shoe.name);
      if (index >= 0) {
        _cart[index].quantity++;
      } else {
        _cart.add(
          Shoe(name: shoe.name, price: shoe.price, imageUrl: shoe.imageUrl),
        );
      }
    });
  }

  void _removeFromCart(Shoe shoe) {
    setState(() {
      _cart.removeWhere((item) => item.name == shoe.name);
    });
  }

  double _calculateTotal() {
    return _cart.fold(0.0, (sum, item) => sum + item.price * item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoe Store', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "🛒 Giỏ hàng",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (_cart.isEmpty)
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Chưa có sản phẩm nào trong giỏ hàng",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              )
            else
              Column(
                children:
                    _cart
                        .map(
                          (shoe) => CartItem(
                            shoe: shoe,
                            onRemove: () => _removeFromCart(shoe),
                          ),
                        )
                        .toList(),
              ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Text("Tổng tiền:", style: TextStyle(fontSize: 18)),
                  const Spacer(),
                  Text(
                    "${_calculateTotal().toStringAsFixed(2)} \$",
                    style: const TextStyle(fontSize: 18, color: Colors.green),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "👟 Danh sách sản phẩm",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ShoeList(shoes: _products, onAddToCart: _addToCart),
          ],
        ),
      ),
    );
  }
}
