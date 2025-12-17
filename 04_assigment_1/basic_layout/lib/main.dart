import 'package:basic_layout/feature/car/presentation/car_screen.dart';
import 'package:basic_layout/feature/car/presentation/car_screen_2.dart';
import 'package:basic_layout/feature/car/presentation/view_model/car_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarScreen2(),
    );
  }
}
