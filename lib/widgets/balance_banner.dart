import 'package:flutter/material.dart';

class BalanceBanner extends StatelessWidget {
  const BalanceBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[600],
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        'Buy Orange 10 Kg\nGet discount 25%',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
