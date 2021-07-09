import 'package:flutter/material.dart';
import 'package:pet_ui_app/listOther.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/pet-cat2.png',
              height: 270,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 130,
                decoration: BoxDecoration(
                  boxShadow: shadowList,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff416d6d),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: shadowList,
                    ),
                    child: Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff416d6d),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: shadowList,
                    ),
                    child: Center(
                        child: Text(
                      'Adoption',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
