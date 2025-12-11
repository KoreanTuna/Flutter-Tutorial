import 'package:flutter/material.dart';

/// 주희 대리님  : controller 선언 및 메모리 해제 / Stack으로 하지 않아도 될 것 같다
/// immutable한 변수는 final로 선언하는 것이 좋다
/// Entity를 통한 데이터 교환
/// 변수 여러개를 만들어서 쓸 변수를 다르게 하는 것이 안전하다
///
///
/// 수은 대리님 : Theme은 머테리얼 기본 위젯에도 적용되기 때문에, 사용하면 유용할 수 있다.
/// stateful로 만든 이유?
/// part of / part
///
///

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
