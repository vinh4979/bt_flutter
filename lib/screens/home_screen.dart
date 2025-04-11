import 'package:flutter/material.dart';
import '../widgets/balance_banner.dart';
import '../widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Balance + Avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Balance',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$1,700.00',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(radius: 16, backgroundColor: Colors.green[600]),
                ],
              ),
              const SizedBox(height: 20),

              // Banner
              const BalanceBanner(),

              const SizedBox(height: 30),
              const Text(
                "For you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Category Grid
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CategoryItem(name: "Fruit", emoji: "🍊"),
                  CategoryItem(name: "Vegetable", emoji: "🥬"),
                  CategoryItem(name: "Cookies", emoji: "🍩"),
                  CategoryItem(name: "Meat", emoji: "🥩"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
