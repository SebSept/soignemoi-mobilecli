import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _MyWebViewController(),
      ),

    );
  }
}

class _MyWebViewController extends WebViewController {
  _MyWebViewController() {
    super.setJavaScriptMode(JavaScriptMode.unrestricted);
    super.setBackgroundColor(const Color(0x00000000));
    super.loadRequest(Uri.parse('http://192.168.64.1:32768/'));
  }
}
