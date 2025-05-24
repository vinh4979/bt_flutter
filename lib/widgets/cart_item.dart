import 'package:flutter/material.dart';
import '../models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  final VoidCallback onRemove;

  const CartItem({super.key, required this.shoe, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(shoe.imageUrl, width: 50),
      title: Text(shoe.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${shoe.price.toStringAsFixed(2)} \$",
            style: const TextStyle(fontSize: 14, color: Colors.green),
          ),
          Text(
            "Số lượng: ${shoe.quantity}",
            style: const TextStyle(fontSize: 14, color: Colors.green),
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: onRemove,
      ),
    );
  }
}
