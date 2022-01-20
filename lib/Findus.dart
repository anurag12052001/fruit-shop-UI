import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class findUs extends StatefulWidget {
  const findUs({Key? key}) : super(key: key);

  @override
  _findUsState createState() => _findUsState();
}

class _findUsState extends State<findUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://www.maps.google.co.in",
        javascriptMode: JavascriptMode.unrestricted,

        onPageStarted: (str) {
          // it will run when the page will be started
          print("onPageStarted");
        },
        onPageFinished: (str) {
          // it will run when the page running is finished.
          print("onPageFinished");
        },
        onProgress: (progress) {
          // it tells the progress of the page
          print("onProgress $progress");
        },

        gestureNavigationEnabled:
            true, // it will allow usser to go back while pressing the back button
      ),
    );
  }
}
