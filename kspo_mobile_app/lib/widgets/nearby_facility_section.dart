// lib/widgets/nearby_facility_section.dart
import 'package:flutter/material.dart';
import '../models/facility.dart';
import '../data/sample_data.dart';

class NearbyFacilitySection extends StatelessWidget {
  const NearbyFacilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '내 주변 운동시설',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: SampleData.nearbyFacilities.length,
            itemBuilder: (context, index) {
              final facility = SampleData.nearbyFacilities[index];
              return FacilityCard(facility: facility);
            },
          ),
        ),
      ],
    );
  }
}

class FacilityCard extends StatelessWidget {
  final Facility facility;

  const FacilityCard({
    super.key,
    required this.facility,
  });

  @override
  Widget build(BuildContext context) {
    // 화면 너비의 40%로 설정 (2.5개가 보이도록)
    final cardWidth = MediaQuery.of(context).size.width * 0.4;

    return Container(
      width: cardWidth,
      margin: const EdgeInsets.only(right: 12),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 이미지를 정사각형으로 변경
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                facility.imageUrl,
                height: cardWidth,
                width: cardWidth,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    facility.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    facility.location,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.amber[700],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        facility.rating.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
