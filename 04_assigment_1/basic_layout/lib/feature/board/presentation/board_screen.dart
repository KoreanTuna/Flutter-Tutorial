import 'package:flutter/material.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  final String imageUrl =
      'https://media.istockphoto.com/id/1729402032/ko/%EC%82%AC%EC%A7%84/%EC%87%BC%ED%95%91%EB%B0%B1%EC%9D%84-%EB%93%A4%EA%B3%A0-%EC%9E%88%EB%8A%94-%EC%95%8C%EC%95%84%EB%B3%BC-%EC%88%98-%EC%97%86%EB%8A%94-%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4-%EC%97%AC%EC%9E%90.jpg?s=612x612&w=0&k=20&c=j0J72QTP6mYIwNa5yiz5cP2f_bAcu4ulXqEcrESyUHc=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                Image.network(
                  imageUrl,
                  height: 360,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                const Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        _ItemRowWidget(
                          title: 'Board Title',
                          description: 'board item.',
                        ),
                      ],
                    ),
                  ),
                ),

                // ListView(
                //   children: [],
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            child: ElevatedButton(
              onPressed: () {
                // 버튼 클릭 시 동작
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Perform Action',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemRowWidget extends StatelessWidget {
  const _ItemRowWidget({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 36,
          thickness: 0.5,
          color: Colors.grey,
        ),
      ],
    );
  }
}
