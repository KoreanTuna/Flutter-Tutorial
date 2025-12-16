import 'package:basic_layout/feature/car/domain/entities/card_entity.dart';
import 'package:basic_layout/feature/car/presentation/view_model/car_view_model.dart';
import 'package:flutter/material.dart';

part 'widget/car_grid_widget.dart';
part 'widget/car_item_widget.dart';
part 'widget/confirm_button_widget.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({
    super.key,
    required this.viewModel,
  });
  final CarViewModel viewModel;

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  late final Future<List<CardEntity>> _carFuture;
  final Set<int> _cart = {};

  @override
  void initState() {
    super.initState();
    _carFuture = widget.viewModel.fetchCars();
  }

  void _toggleCart(CardEntity car) {
    // 자식에서 전달된 콜백이 부모의 setState를 트리거한다.
    setState(() {
      if (_cart.contains(car.id)) {
        _cart.remove(car.id);
      } else {
        _cart.add(car.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Car Catalog',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: _carFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No cars available'));
          } else {
            final carList = snapshot.data!;
            return Column(
              children: [
                _CarGridWidget(
                  carList: carList,
                  toggleCart: _toggleCart,
                  selectedIds: _cart,
                ),
                _ConfirmButtonWidget(
                  carItemSize: _cart.length,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
