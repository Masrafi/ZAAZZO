import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:masrafianam/conponents/style/color.dart';
import 'package:http/http.dart' as http;

import '../../constants/api/config.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var color = ColorFactory();
  Future progressShowData() async {
    final response = await http.get(Uri.parse(Config.PRODUCT_URL));
    print(response.body);
    List<dynamic> map = jsonDecode(response.body);
    return map;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.theme,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 8,
              left: MediaQuery.of(context).size.width / 8,
            ),
            child: Text(
              "Catagory",
              style: TextStyle(
                color: color.black.withOpacity(0.7),
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 10,
              right: MediaQuery.of(context).size.width / 30,
              left: MediaQuery.of(context).size.width / 30,
              bottom: MediaQuery.of(context).size.width / 1000,
            ),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width / 100,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF5F5F8),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 15,
                right: MediaQuery.of(context).size.height / 30,
              ),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: color.black.withOpacity(0.5),
                      size: MediaQuery.of(context).size.height / 30,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 30,
                      ),
                      child: Text.rich(
                        TextSpan(
                            text: 'X',
                            style: TextStyle(
                              //color: color.theme,
                              color: color.black.withOpacity(0.6),
                              fontSize: MediaQuery.of(context).size.height / 30,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'E',
                                style: TextStyle(
                                  color: color.theme.withOpacity(0.5),
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ),
                            ]),
                      ),
                    ),

                    Icon(
                      Icons.search,
                      color: color.black.withOpacity(0.6),
                      size: MediaQuery.of(context).size.height / 30,
                    ),
                    // Image.asset(
                    //   'assets/thumbnail.png',
                    //   height: MediaQuery.of(context).size.height / 30,
                    // )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Product",
                      style: TextStyle(
                        color: color.black.withOpacity(0.7),
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.height / 40,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Sort by",
                          style: TextStyle(
                            color: color.black.withOpacity(0.4),
                            fontWeight: FontWeight.w700,
                            fontSize: MediaQuery.of(context).size.height / 60,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: color.black.withOpacity(0.4),
                          size: MediaQuery.of(context).size.height / 30,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: color.whiteT.withOpacity(0.8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                        right: MediaQuery.of(context).size.height / 80,
                        left: MediaQuery.of(context).size.height / 80,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_chart,
                            color: Colors.black,
                            size: MediaQuery.of(context).size.height / 40,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Sneakers',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: MediaQuery.of(context).size.height / 60,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: color.whiteT.withOpacity(0.8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                        right: MediaQuery.of(context).size.height / 80,
                        left: MediaQuery.of(context).size.height / 80,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_chart,
                            color: Colors.black,
                            size: MediaQuery.of(context).size.height / 40,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Watch',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: MediaQuery.of(context).size.height / 60,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: color.whiteT.withOpacity(0.8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                        right: MediaQuery.of(context).size.height / 80,
                        left: MediaQuery.of(context).size.height / 80,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_chart,
                            color: Colors.black,
                            size: MediaQuery.of(context).size.height / 40,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: MediaQuery.of(context).size.height / 60,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FutureBuilder(
                    future: progressShowData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List list = snapshot.data;
                        return GridView.builder(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 60,
                            //  left: MediaQuery.of(context).size.height / 30,
                            // right: MediaQuery.of(context).size.height / 30,
                            //bottom: MediaQuery.of(context).size.height / 15,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 2 / 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 20),
                          physics: ScrollPhysics(),
                          itemCount: snapshot.data.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              // margin: EdgeInsets.only(
                              //   left: displayWidth(context) * .05,
                              //   right: displayWidth(context) * .05,
                              //   // top: displayWidth(context) * .04,
                              // ),
                              margin: EdgeInsets.only(left: 5, right: 5),

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color: color.whiteT
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color(0xff2C1DEB).withOpacity(0.1),
                                  //     spreadRadius: 8,
                                  //     blurRadius: 8,
                                  //     offset: Offset(
                                  //         0, 0), // changes position of shadow
                                  //   ),
                                  // ],
                                  ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 80,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                        ),
                                        height:
                                            MediaQuery.of(context).size.height /
                                                35,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                10,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD1EFF7)
                                              .withOpacity(0.7),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '30%',
                                            style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  69,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                        ),
                                        child: Text(
                                          '\u2764',
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                35,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.8,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8,
                                          decoration: new BoxDecoration(
                                            color: Color(0xffFFEADC),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                160,
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9,
                                          decoration: new BoxDecoration(
                                            color: color.whiteT,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                110,
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9.5,
                                          decoration: new BoxDecoration(
                                            color: Color(0xffFFEADC),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              30,
                                        ),
                                        child: Image.network(
                                          list[index]['image'],
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              11,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 50,
                                  ),
                                  Text(
                                    list[index]['title']
                                        .toString()
                                        .substring(0, 15),
                                    style: TextStyle(
                                      color: color.black.withOpacity(0.6),
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              55,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        150,
                                  ),
                                  Text(
                                    list[index]['price'].toString(),
                                    style: TextStyle(
                                      color: color.black.withOpacity(0.7),
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              45,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        150,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color(0xffF3D05B).withOpacity(0.6),
                                        size:
                                            MediaQuery.of(context).size.height /
                                                55,
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color(0xffF3D05B).withOpacity(0.6),
                                        size:
                                            MediaQuery.of(context).size.height /
                                                55,
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color(0xffF3D05B).withOpacity(0.6),
                                        size:
                                            MediaQuery.of(context).size.height /
                                                55,
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color(0xffF3D05B).withOpacity(0.6),
                                        size:
                                            MediaQuery.of(context).size.height /
                                                55,
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.black.withOpacity(0.1),
                                        size:
                                            MediaQuery.of(context).size.height /
                                                55,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "(${list[index]['rating']['rate'].toString()})",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w100,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.red,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.black),
                          ),
                        );
                      }
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
