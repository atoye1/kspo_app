import 'package:flutter/material.dart';

// lib/widgets/location_selector.dart
class LocationSelector extends StatelessWidget {
  const LocationSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 지역 선택 다이얼로그 표시
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '부산 남구 대연동',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
