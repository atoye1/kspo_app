// lib/widgets/custom_app_bar.dart
import 'package:flutter/material.dart';
import 'package:kspo_mobile_app/widgets/location_selector.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          // 로고
          Image.asset(
            'assets/images/logo.png',
            height: 32,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: LocationSelector(),
            ),
          ),
          // 알림 아이콘
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          // 장바구니 아이콘
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
