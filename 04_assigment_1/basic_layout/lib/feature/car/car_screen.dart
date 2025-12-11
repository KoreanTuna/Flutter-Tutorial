import 'package:basic_layout/feature/car/widget/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  String title = 'Car';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Input Text : $title'),
            CustomTextfieldWidget(
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
