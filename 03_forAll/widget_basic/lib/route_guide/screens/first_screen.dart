import 'package:flutter/material.dart';
import 'package:widget_basic/route_guide/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen();
                    },
                  ),
                );
              },
              child: Text('GO TO SECOND SCREEN'),
            ),
          ],
        ),
      ),
    );
  }
}
