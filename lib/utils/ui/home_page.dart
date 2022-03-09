import 'package:flutter/material.dart';
import 'package:masrafianam/conponents/style/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../conponents/widget/daily_deals.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color = ColorFactory();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 8,
              //left: MediaQuery.of(context).size.width / 8,
            ),
            child: Center(
              child: Text(
                "Landing Home Page",
                style: TextStyle(
                  color: color.black.withOpacity(0.7),
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 10,
              right: MediaQuery.of(context).size.width / 30,
              left: MediaQuery.of(context).size.width / 30,
              bottom: MediaQuery.of(context).size.width / 200,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF5F5F8),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.amberAccent.withOpacity(.8),
                            size: MediaQuery.of(context).size.height / 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good Morning",
                                style: TextStyle(
                                  color: color.black.withOpacity(.3),
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 55,
                                ),
                              ),
                              Text(
                                "Masrafi",
                                style: TextStyle(
                                  color: color.black.withOpacity(.6),
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 55,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.list,
                        color: Colors.black.withOpacity(.5),
                        size: MediaQuery.of(context).size.height / 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 13,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.15),
                    //     spreadRadius: 1,
                    //     blurRadius: 8,
                    //     offset: Offset(0, 0), // changes position of shadow
                    //   ),
                    // ],
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 40,
                    right: MediaQuery.of(context).size.height / 40,
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        //Icons.arrow_forward,
                        color: color.black.withOpacity(0.3),
                        size: MediaQuery.of(context).size.height / 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search product you wish...",
                        style: TextStyle(
                          color: color.black.withOpacity(0.3),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 50,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daily Deals",
                        style: TextStyle(
                          color: color.black.withOpacity(0.6),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 48,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.2),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.2),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                DailyDeals(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Category",
                        style: TextStyle(
                          color: color.black.withOpacity(0.6),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 48,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.2),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: color.black.withOpacity(0.2),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Container(
                  //margin: const EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  height: MediaQuery.of(context).size.height / 7,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/phn3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 18,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Text(
                              "SAMSUNG",
                              style: TextStyle(
                                color: color.whiteT.withOpacity(0.9),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/phn3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 18,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Text(
                              "Apple",
                              style: TextStyle(
                                color: color.whiteT.withOpacity(0.9),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/phn3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 18,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Text(
                              "Redmi",
                              style: TextStyle(
                                color: color.whiteT.withOpacity(0.9),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/phn3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 18,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Text(
                              "Oppo",
                              style: TextStyle(
                                color: color.whiteT.withOpacity(0.9),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/phn3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 18,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Text(
                              "Realmi",
                              style: TextStyle(
                                color: color.whiteT.withOpacity(0.9),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
