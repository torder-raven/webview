import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse(
    'https://litt.ly/duenyang?fbclid=PAAaYIsljf7s38jdGmA9RYRvRSXc0lDo09pjKJuNHajEXEmukq5kJG2BUKDPo');

class HomeScreen extends StatelessWidget {
  var controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Colors.yellow)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true, // 지정을 안해주면 아이폰은 중앙으로 배치된다. (안드로이드는 기본값: false)
        title: Text(
          '갓생 메이트',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          // 왼쪽 아이콘 배치
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          // 오른쪽 아이콘 배치
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
