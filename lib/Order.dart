import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // imp to import this package when we are working with webview

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  // bool webviewloading = false;
  // int progressval = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      //     body: Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       WebView(
      //         initialUrl: "https://www.google.com/",
      //         javascriptMode: JavascriptMode.unrestricted,
      //         onPageStarted: (str) {
      //           print("loading started");

      //           setState(() {
      //             webviewloading = true;
      //             progressval = 0;
      //           });
      //         },
      //         onProgress: (progress) {
      //           print("onProgress $progress");
      //           setState(() {
      //             progressval = progress;
      //           });
      //         },
      //         onPageFinished: (Str) {
      //           print("loading finished");
      //           setState(() {
      //             webviewloading = false;
      //             progressval = 100;
      //           });
      //         },

      //         gestureNavigationEnabled:
      //             true, // allow user to go back while pressing back
      //       ),
      //       if (webviewloading) ...[
      //         Text("$progressval"),
      //         CircularProgressIndicator(
      //           value: progressval.toDouble() / 100,
      //           strokeWidth: 5, // this is for circular width loading
      //           backgroundColor: Colors.teal,
      //           valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
      //         )
      //       ]
      //     ],
      //   ),
      // )

      body: WebView(
        initialUrl: "https://www.zomato.com",
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
