import 'package:flutter/material.dart';
import 'package:webview/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}


// https://litt.ly/duenyang?fbclid=PAAaYIsljf7s38jdGmA9RYRvRSXc0lDo09pjKJuNHajEXEmukq5kJG2BUKDPo