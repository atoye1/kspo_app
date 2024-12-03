// lib/data/sample_data.dart
import '../models/banner_item.dart';
import '../models/quick_menu_item.dart';
import '../models/service_menu_item.dart';
import '../models/facility.dart';

class SampleData {
  // lib/data/sample_data.dart의 nearbyFacilities 부분만 수정
  static List<Facility> nearbyFacilities = [
    Facility(
      id: '1',
      name: '경성대 팀헬스보이',
      location: '부산 남구 대연동',
      imageUrl: 'assets/images/gym1.png',
      rating: 4.5,
      address: '부산광역시 남구 용소로 45',
    ),
    Facility(
      id: '2',
      name: '경성대 팀매드',
      location: '부산 남구 대연동',
      imageUrl: 'assets/images/gym2.png',
      rating: 4.7,
      address: '부산광역시 남구 용소로 47',
    ),
    Facility(
      id: '3',
      name: '태권도 짐',
      location: '부산 남구 대연동',
      imageUrl: 'assets/images/gym3.png',
      rating: 4.8,
      address: '부산광역시 남구 용소로 49',
    ),
    Facility(
      id: '4',
      name: '요가 짐',
      location: '부산 남구 대연동',
      imageUrl: 'assets/images/gym4.png',
      rating: 4.6,
      address: '부산광역시 남구 용소로 51',
    ),
  ];
  static List<QuickMenuItem> quickMenuItems = [
    QuickMenuItem(
      id: '1',
      title: '다집회원가',
      iconPath: 'assets/icons/discount.png',
      badgeText: '%',
    ),
    QuickMenuItem(
      id: '2',
      title: '통합회원권',
      iconPath: 'assets/icons/membership.png',
      badgeText: '1+1',
    ),
    QuickMenuItem(
      id: '3',
      title: '일일권',
      iconPath: 'assets/icons/oneday.png',
      badgeText: '1DAY',
    ),
  ];

  static List<ServiceMenuItem> serviceMenuItems = [
    ServiceMenuItem(
      id: '1',
      title: '최저가 보장',
      iconPath: 'assets/icons/price_guarantee.png',
    ),
    ServiceMenuItem(
      id: '2',
      title: '결제혜택',
      iconPath: 'assets/icons/payment_benefit.png',
    ),
    ServiceMenuItem(
      id: '3',
      title: '무이자 할부',
      iconPath: 'assets/icons/installment.png',
    ),
  ];

  static List<BannerItem> bannerItems = [
    BannerItem(
      id: '1',
      imageUrl: 'assets/images/banner1.png',
      title: '무료체험 이벤트',
      subtitle: '지금 바로 신청하세요',
    ),
    BannerItem(
      id: '2',
      imageUrl: 'assets/images/banner2.png',
      title: '새해 운동 이벤트',
      subtitle: '특별 할인 혜택',
    ),
    BannerItem(
      id: '3',
      imageUrl: 'assets/images/banner3.png',
      title: 'PT 할인 이벤트',
      subtitle: '10회 등록시 20% 할인',
    ),
  ];
}
