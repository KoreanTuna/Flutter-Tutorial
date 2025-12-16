import 'package:basic_layout/feature/car/domain/entities/card_entity.dart';
import 'package:flutter/material.dart';

class CarViewModel extends ChangeNotifier {
  final List<CardEntity> _cars = [
    CardEntity(
      id: 1,
      name: 'Roadster S',
      description: '도심 주행에 최적화된 전기 로드스터',
      createdAt: DateTime(2023, 7, 10),
      price: 42000,
    ),
    CardEntity(
      id: 2,
      name: 'Family Van',
      description: '7인승 패밀리 전기 밴',
      createdAt: DateTime(2022, 11, 2),
      price: 38000,
    ),
    CardEntity(
      id: 3,
      name: 'Trail X',
      description: '험로 주행이 가능한 오프로더',
      createdAt: DateTime(2024, 1, 15),
      price: 51000,
    ),
    CardEntity(
      id: 4,
      name: 'City Mini',
      description: '주차가 쉬운 경량 도심형',
      createdAt: DateTime(2023, 4, 3),
      price: 28000,
    ),
    CardEntity(
      id: 5,
      name: 'GT Turbo',
      description: '고성능 스포츠 세단',
      createdAt: DateTime(2024, 5, 1),
      price: 64000,
    ),
    CardEntity(
      id: 6,
      name: 'Eco Wagon',
      description: '실용적인 하이브리드 왜건',
      createdAt: DateTime(2022, 8, 22),
      price: 33000,
    ),
  ];

  Future<List<CardEntity>> fetchCars() async {
    /// 네트워크 통신 딜레이 모방
    await Future.delayed(const Duration(seconds: 1));
    return _cars;
  }
}
