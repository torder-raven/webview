import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'component/top_app_bar.dart';

final homeUrl = Uri.parse('https://docs.flutter.dev/ui');
final googleUrl = Uri.parse('https://www.google.com');

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  WebViewController controller = WebViewController()
    ..loadRequest(homeUrl)
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
      title: 'raven',
      listener: (event) {
        if (event == IconAction.Home) {
          controller.loadRequest(homeUrl);
        } else if (event == IconAction.Search) {
          controller.loadRequest(googleUrl);
        }
      },
    ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}