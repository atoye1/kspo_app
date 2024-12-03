// lib/widgets/service_menu_section.dart
import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/service_menu_item.dart';

class ServiceMenuSection extends StatelessWidget {
  const ServiceMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: SampleData.serviceMenuItems
            .map((item) => ServiceMenuItemWidget(menuItem: item))
            .toList(),
      ),
    );
  }
}

class ServiceMenuItemWidget extends StatelessWidget {
  final ServiceMenuItem menuItem;

  const ServiceMenuItemWidget({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            menuItem.iconPath,
            width: 32,
            height: 32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          menuItem.title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
