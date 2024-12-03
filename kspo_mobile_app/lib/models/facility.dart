// lib/models/facility.dart
class Facility {
  final String id;
  final String name;
  final String location;
  final String imageUrl;
  final double rating;
  final String address;

  Facility({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.address,
  });

  factory Facility.fromJson(Map<String, dynamic> json) {
    return Facility(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      imageUrl: json['imageUrl'],
      rating: json['rating'].toDouble(),
      address: json['address'],
    );
  }
}
