// lib/main.dart
import 'package:flutter/material.dart';
import 'package:kspo_mobile_app/widgets/main_banner_section.dart';
import 'package:kspo_mobile_app/widgets/nearby_facility_section.dart';
import 'package:kspo_mobile_app/widgets/service_menu_selection.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/search_bar.dart';
import 'widgets/quick_menu_selection.dart';
import 'widgets/slider_banner_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '체육시설 정보',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 검색바
              CustomSearchBar(),
              // 퀵메뉴
              QuickMenuSection(),
              MainBannerSection(),
              Divider(height: 1), // 구분선 추가
              ServiceMenuSection(), // 새로 추가된 부분
              // 나머지 섹션들은 아직 구현 전이므로 임시 공간으로 표시
              SizedBox(height: 16),
              SliderBannerSection(), // 새로 추가된 부분
              SizedBox(height: 16),
              NearbyFacilitySection(),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    '메인 배너 및 기타 섹션 구현 예정',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: '운동시설',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '트레이너',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '찜',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
