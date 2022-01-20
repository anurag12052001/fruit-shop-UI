import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class rewards extends StatefulWidget {
  const rewards({Key? key}) : super(key: key);

  @override
  _rewardsState createState() => _rewardsState();
}

class _rewardsState extends State<rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://www.budweiser.com",
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
