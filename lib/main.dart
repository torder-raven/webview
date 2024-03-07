import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

void main() {
  // Flutter 프레임워크가 시작될 때 까지 기다린다.
  // https://velog.io/@kyj5394/WidgetsFlutterBinding.ensureInitialized-사용-이유
  // https://bangu4.tistory.com/365
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
