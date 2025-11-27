import 'package:flutter/material.dart';

class WidgetBasic extends StatelessWidget {
  const WidgetBasic({super.key});

  @override
  Widget build(BuildContext context) {
    /// scaffold는 화면의 기본 골격을 잡아주는 위젯입니다. 사실상 필수
    /// 앱바, 바디, 플로팅 액션 버튼 등 다양한 속성을 포함할 수 있습니다.
    /// 여기서는 body 속성만 사용합니다.
    /// body: 위젯 트리의 주요 콘텐츠를 포함하는 부분입니다.
    /// 여기서는 다양한 위젯 예제를 주석 처리하여 보여줍니다.
    return Scaffold(
      // body: TextWidget(),
      // body: ContainerWidget(),
      // body: PaddingWidget(),
      body: RowWidget(),
      // body: ColumnWidget(),
      // body: SizedBoxWidget(),
      // body: StackWidget(),
    );
  }
}

/// 텍스트를 그려주는 위젯입니다.
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World!',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// 사각형 박스를 그려주는 위젯입니다.
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

/// 패딩을 적용하는 위젯입니다.
class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

/// 가로 방향으로 위젯을 나열하는 위젯입니다.
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start, // 기본값
        children: [Text('Row는 가로 방향으로 '), Text('위젯을 나열합니다.')],
      ),
    );
  }
}

/// 세로 방향으로 위젯을 나열하는 위젯입니다.
class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center, // 기본값
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Text('Column은 세로 방향으로 '), Text('위젯을 나열합니다.')],
    );
  }
}

/// 사각형 박스를 그려주는 위젯입니다.
class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            SizedBox(width: 24),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
        SizedBox(height: 24),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ],
    );
  }
}

/// Z축 방향으로 위젯을 쌓아올리는 위젯입니다.
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
