import 'package:flutter/material.dart';

class TextInputScreen extends StatefulWidget {
  const TextInputScreen({super.key});

  @override
  State<TextInputScreen> createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  /// init
  /// 화면 빌드
  /// (change)
  /// (update)
  /// dispose
  ///

  late final TextEditingController textController;

  void listener() {
    print('hihihihi');
  }

  @override
  void initState() {
    super.initState();
    print('INIT');
    textController = TextEditingController();
    textController.addListener(listener);
  }

  @override
  void dispose() {
    print('DISPOSE');
    textController.removeListener(listener);
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: textController,
            ),

            ElevatedButton(
              onPressed: () {
                textController.clear();
              },
              child: Text('CLEAR'),
            ),
          ],
        ),
      ),
    );
  }
}
