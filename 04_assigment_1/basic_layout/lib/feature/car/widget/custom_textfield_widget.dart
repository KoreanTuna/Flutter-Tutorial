import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatefulWidget {
  const CustomTextfieldWidget({
    super.key,
    required this.onChanged,
  });

  final void Function(String value) onChanged;

  @override
  State<CustomTextfieldWidget> createState() => _CustomTextfieldWidgetState();
}

class _CustomTextfieldWidgetState extends State<CustomTextfieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        widget.onChanged(value);
      },
    );
  }
}
