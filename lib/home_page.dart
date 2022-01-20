import 'package:flutter/material.dart';
import 'package:fruit_shop/Findus.dart';
import 'package:fruit_shop/Order.dart';
import 'package:fruit_shop/Rewards.dart';
import 'package:fruit_shop/Tradinghrs.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text("Splash screen"),
      // ),
      // body: Center(
      // child: Text("Home page"),

      //     body: Column(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //             image: AssetImage('assets/images/splash.png'),
      //             fit: BoxFit.cover),
      //       ),
      //     ),
      //   ],
      // ));

      // body: SafeArea(
      //   child: Stack(children: [
      //     Container(
      //       width: double.infinity,
      //       height: double.infinity,
      //       child: Image.asset(
      //         "assets/images/splash.png",
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: (MediaQuery.of(context).size.height -
      //           MediaQuery.of(context).padding.top -
      //           175),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Image.asset(
      //             "assets/images/button_orders.png"
      //           ),
      //           Image.asset("assets/images/button_rewards.png"),
      //           Image.asset("assets/images/button_hours.png"),
      //           Image.asset("assets/images/button_find.png"),
      //         ],
      //       ),
      //     ),
      //   ]),
      // ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            children: [
              // padding for order button
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => order()));
                    },
                    child: Image.asset('assets/images/button_orders.png'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    )),
              ),

              // padding for rewards button
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rewards()));
                  },
                  child: Image.asset('assets/images/button_rewards.png'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
              ),

              // padding for trading hrs button

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tradinghrs()));
                  },
                  child: Image.asset('assets/images/button_hours.png'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
              ),

              // padding for find us

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => findUs()));
                  },
                  child: Image.asset('assets/images/button_find.png'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
