import 'package:basic_layout/feature/car/domain/entities/car_entity_2.dart';
import 'package:basic_layout/feature/car/presentation/car_item_widget.dart';
import 'package:flutter/material.dart';

class CarScreen2 extends StatefulWidget {
  const CarScreen2({super.key});

  @override
  State<CarScreen2> createState() => _CarScreen2State();
}

class _CarScreen2State extends State<CarScreen2> {
  Future<List<CarEntity2>> getFutureCars() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return List.generate(
      10,
      (index) {
        return CarEntity2(
          id: index,
          name: 'Car $index',
          createdAt: DateTime.now(),
          price: 2000 + index * 500,
        );
      },
    );
  }

  List<CarEntity2> getCars() {
    return List.generate(
      10,
      (index) {
        return CarEntity2(
          id: index,
          name: 'Car $index',
          createdAt: DateTime.now(),
          price: 2000 + index * 500,
        );
      },
    );
  }

  final Set<int> idSet = {};

  @override
  Widget build(BuildContext context) {
    final List<CarEntity2> cars = getCars();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Car Catalog',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 0.7,
        ),
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarItemWidget(
            car: cars[index],
            isSelected: idSet.contains(cars[index].id),
            onTap: (int id) {
              setState(() {
                if (idSet.contains(id)) {
                  /// 빼기
                  idSet.remove(id);
                } else {
                  /// 넣기
                  idSet.add(id);
                }
              });
            },
          );
        },
      ),
    );
  }
}
