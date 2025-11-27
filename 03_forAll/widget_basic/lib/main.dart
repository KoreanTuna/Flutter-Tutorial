import 'package:flutter/material.dart';
import 'package:widget_basic/route_guide/route_guide.dart';
import 'package:widget_basic/widget_basic/widget_basic.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WidgetBasic(),
      ),
    );
  }
}
