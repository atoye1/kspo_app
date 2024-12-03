import 'package:flutter/material.dart';

// lib/widgets/search_bar.dart
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: '어떤 운동을 찾고 계신가요?',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          ),
        ),
      ),
    );
  }
}
