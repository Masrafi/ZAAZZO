import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:masrafianam/conponents/style/color.dart';
import 'package:http/http.dart' as http;
import 'package:masrafianam/constants/api/config.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var colorfactory = ColorFactory();
  Future progressShowData() async {
    final response = await http.get(Uri.parse(Config.PRODUCT_URL));
    print(response.body);
    List<dynamic> map = jsonDecode(response.body);
    return map;
  }

  PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progressShowData();
    pc = new PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: progressShowData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                  pageSnapping: true,
                  controller: pc,
                  allowImplicitScrolling: true,
                  physics: new AlwaysScrollableScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 1.3,
                          decoration: BoxDecoration(
                            color: colorfactory.theme,
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(25),
                              // topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(200),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FloatingActionButton(
                              child: Text("Next"),
                              onPressed: () {
                                Navigator.pushNamed(context, '/navbar');
                              },
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 10,
                            left: MediaQuery.of(context).size.width / 3.5,
                          ),
                          child: Text(
                            "Product Details",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 35,
                              color: colorfactory.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          //height: MediaQuery.of(context).size.height / 1.22,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 7,
                            right: MediaQuery.of(context).size.width / 15,
                            left: MediaQuery.of(context).size.width / 15,
                            bottom: MediaQuery.of(context).size.width / 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 25,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 15,
                                  right:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      size: MediaQuery.of(context).size.height /
                                          30,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                      child: Text.rich(
                                        TextSpan(
                                            text: 'X',
                                            style: TextStyle(
                                              //color: color.theme,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  30,
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: 'E',
                                                style: TextStyle(
                                                  color: colorfactory.theme
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          30,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),

                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                8,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFBF6F3)
                                              .withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: Text(
                                          '\u2764',
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                          ),
                                        ))),
                                    // Image.asset(
                                    //   'assets/thumbnail.png',
                                    //   height: MediaQuery.of(context).size.height / 30,
                                    // )
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 30,
                                width: MediaQuery.of(context).size.width / 8,
                                decoration: BoxDecoration(
                                  color: Color(0xffD1EFF7).withOpacity(0.7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '30%',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              55,
                                    ),
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.8,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),
                                      decoration: new BoxDecoration(
                                        color: Color(0xffFCDFDF),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                15,
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      decoration: new BoxDecoration(
                                        color: Color(0xffFFEADC),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          11,
                                    ),
                                    child: Center(
                                      child: Image.network(
                                        list[index]['image'],
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                8,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD1EFF7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD1EFF7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                      color: Color(0xffD1EFF7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD1EFF7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD1EFF7),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              Container(
                                //height: MediaQuery.of(context).size.height / 1.22,

                                decoration: BoxDecoration(
                                  color: Color(0xffF7F7F7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              30,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        right:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            list[index]['title']
                                                .toString()
                                                .substring(0, 15),
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  40,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffF3D05B)
                                                    .withOpacity(0.6),
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    30,
                                              ),
                                              Text(
                                                "(${list[index]['rating']['rate'].toString()})",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w100,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          50,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              200,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        right:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      child: Text(
                                        list[index]['description']
                                            .toString()
                                            .substring(0, 50),
                                        style: TextStyle(
                                          color: colorfactory.black
                                              .withOpacity(0.3),
                                          fontWeight: FontWeight.w700,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              150,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        right:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Size:",
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.2),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  50,
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                15,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD1EFF7),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "US 6",
                                                style: TextStyle(
                                                  color: colorfactory.black
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          45,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "US 7",
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  45,
                                            ),
                                          ),
                                          Text(
                                            "US 8",
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  45,
                                            ),
                                          ),
                                          Text(
                                            "US 9",
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  45,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              100,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        right:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Available Color:",
                                            style: TextStyle(
                                              color: colorfactory.black
                                                  .withOpacity(0.2),
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  45,
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffFFD347)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffF95A5E)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffF5A5E0)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff67A1FC)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                30,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 0,
                                              bottom: 0,
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  30,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  40,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  textBaseline:
                                                      TextBaseline.alphabetic,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .monetization_on_outlined,
                                                      size: 20,
                                                      color: colorfactory.black
                                                          .withOpacity(0.3),
                                                    ),
                                                    Text(
                                                      list[index]['price']
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: colorfactory
                                                            .black
                                                            .withOpacity(0.7),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.add_chart,
                                                      color: colorfactory.black
                                                          .withOpacity(0.5),
                                                      size:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              30,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Add To Cart",
                                                      style: TextStyle(
                                                        color: colorfactory
                                                            .black
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            48,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  6.5,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  6.5,
                                            ),
                                            child: Divider(
                                              color: colorfactory.black
                                                  .withOpacity(0.1),
                                              thickness: 3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            child: Text("Next"),
                            onPressed: () {
                              Navigator.pushNamed(context, '/navbarcategory');
                            },
                          ),
                        ),
                      ],
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              );
            }
          }),
    );
  }
}
