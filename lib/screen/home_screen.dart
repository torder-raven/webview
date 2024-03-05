import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: false, // 지정을 안해주면 아이폰은 중앙으로 배치된다. (안드로이드는 기본값: false)
        title: Text(
          '갓생 메이트',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
