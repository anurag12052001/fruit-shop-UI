import 'package:flutter/material.dart';

class tradinghrs extends StatelessWidget {
  const tradinghrs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 160),
                alignment: Alignment.center,
                child: Text(
                  "Trading Hours",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text(
                  "Monday to Friday from 7am to 6pm ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text(
                  "Saturday from 7am to 5pm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text(
                  "Sunday from 8am to 4pm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
