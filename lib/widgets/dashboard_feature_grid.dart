import 'package:flutter/material.dart';

class DashboardFeatureGrid extends StatelessWidget {
  const DashboardFeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Music',
      'Property',
      'Game',
      'Gadget',
      'Electronic',
      'Property',
      'Game',
      'Book',
    ];

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder:
          (context, index) => Column(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.image),
              ),
              const SizedBox(height: 4),
              Text(items[index], style: const TextStyle(fontSize: 12)),
            ],
          ),
    );
  }
}
