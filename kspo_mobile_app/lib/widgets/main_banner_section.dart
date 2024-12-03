// lib/widgets/main_banner_section.dart
import 'package:flutter/material.dart';

class MainBannerSection extends StatelessWidget {
  const MainBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              // 내 주변 운동시설 카드
              Expanded(
                flex: 1,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: _buildNearbyFacilityCard(),
                ),
              ),
              const SizedBox(width: 8),
              // 지도에서 찾기 & PT 가격비교 카드들
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    _buildMapSearchCard(),
                    const SizedBox(height: 8),
                    _buildPTCompareCard(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNearbyFacilityCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '내 주변 운동시설',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
            const Spacer(),
            // 운동하는 이미지를 표현하는 일러스트레이션
            Center(
              child: Image.asset(
                'assets/images/exercise_illustration.png',
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapSearchCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '지도에서 찾기',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.blue),
                SizedBox(width: 4),
                Text(
                  '현재 위치',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPTCompareCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(16),
        child: const Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'P.T 가격 비교',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '합리적인 가격 찾기',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.price_change,
              size: 32,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
