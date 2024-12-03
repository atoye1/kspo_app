// lib/widgets/quick_menu_section.dart
import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/quick_menu_item.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: SampleData.quickMenuItems
            .map((item) => QuickMenuItemWidget(menuItem: item))
            .toList(),
      ),
    );
  }
}

class QuickMenuItemWidget extends StatelessWidget {
  final QuickMenuItem menuItem;

  const QuickMenuItemWidget({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: menuItem.id == '1'
                    ? Colors.red[100]
                    : menuItem.id == '2'
                        ? Colors.blue[100]
                        : Colors.green[100],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  menuItem.badgeText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          menuItem.title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
