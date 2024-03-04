import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse("https://blog.codefactory.ai");

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    // 이런 것도 가능한 듯
    ..addJavaScriptChannel("JSChannel",
        onMessageReceived: (JavaScriptMessage message) {
      print("onMessageReceived : $message");
    })
    // 이런 것도 가능한 듯
    ..setNavigationDelegate(
      NavigationDelegate(
        onHttpAuthRequest: (HttpAuthRequest request) {
          print("onHttpAuthRequest : $request");
        },
        // onNavigationRequest: (NavigationRequest request) {},
        onPageFinished: (String url) {
          print("onPageFinished : $url");
        },
        onPageStarted: (String url) {
          print("onPageStarted : $url");
        },
        onProgress: (int progress) {
          print("onProgress : $progress%");
        },
        onUrlChange: (UrlChange change) {
          print("onUrlChange : $change");
        },
        onWebResourceError: (WebResourceError error) {
          print("onWebResourceError : $error");
        },
      ),
    )
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Code Factory"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
