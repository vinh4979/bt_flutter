import 'package:flutter/material.dart';
import '../models/shoe.dart';
import 'shoe_item.dart';

class ShoeList extends StatelessWidget {
  final List<Shoe> shoes;
  final void Function(Shoe) onAddToCart;

  const ShoeList({super.key, required this.shoes, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children:
              shoes.map((shoe) {
                return ShoeItem(
                  shoe: shoe,
                  onAddToCart: () => onAddToCart(shoe),
                );
              }).toList(),
        ),
      ),
    );
  }
}
