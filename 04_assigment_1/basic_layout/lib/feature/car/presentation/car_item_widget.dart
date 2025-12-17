import 'package:basic_layout/feature/car/domain/entities/car_entity_2.dart';
import 'package:flutter/material.dart';

class CarItemWidget extends StatelessWidget {
  const CarItemWidget({
    super.key,
    required this.car,
    required this.onTap,
    this.isSelected = false,
  });

  final bool isSelected;
  final CarEntity2 car;
  final void Function(int id) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        onTap(car.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.indigo : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 0.5,
            color: Colors.indigo,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              car.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              car.price.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        // Column(
        //   children: [
        //     // Text('name : ${car.name}'),
        //     // Text('createdAt ${car.createdAt}'),
        //     // Text('price ${car.price}'),
        //     // ElevatedButton(
        //     //   onPressed: () {
        //     //     /// 아이템을 담기했을때의 로직이 들어가야 한다.
        //     //   },
        //     //   child: Text('담기'),
        //     // ),
        //   ],
        // ),
      ),
    );
  }
}
