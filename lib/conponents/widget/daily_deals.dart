import 'package:flutter/material.dart';
import 'package:masrafianam/conponents/style/color.dart';

class DailyDeals extends StatelessWidget {
  var color = ColorFactory();
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 15,
        right: MediaQuery.of(context).size.height / 30,
      ),
      height: MediaQuery.of(context).size.height / 3,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.height / 4,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  height: MediaQuery.of(context).size.height / 30,
                  width: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Center(
                      child: Text(
                    '-15%',
                    style: TextStyle(
                      color: color.whiteT.withOpacity(0.8),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height / 48,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 25,
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Image.asset(
                    'assets/phn.png',
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6,
                    bottom: MediaQuery.of(context).size.height / 20,
                  ),
                  color: color.whiteT.withOpacity(.9),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                    //bottom: MediaQuery.of(context).size.height / 48,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: color.theme.withOpacity(0.8),
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
                                  color: Color(0xff417FD9),
                                ),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    color: Color(0xff417FD9),
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 55,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 17,
                              width: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                  color: Color(0xffFBF6F3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  )),
                              child: Center(
                                  child: Text(
                                '\u2764',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ))),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5,
                  ),
                  child: Center(
                      child: Text(
                    "OnePlus 7T Dual Sim",
                    style: TextStyle(
                      color: color.black.withOpacity(0.6),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height / 48,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$935.00 ",
                        style: TextStyle(
                          color: color.black.withOpacity(0.8),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 45,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$1,010.00 ",
                        style: TextStyle(
                          color: color.black.withOpacity(0.5),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 55,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.height / 4,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  height: MediaQuery.of(context).size.height / 30,
                  width: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    color: Color(0xffB3D77C).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Top',
                    style: TextStyle(
                      color: color.whiteT.withOpacity(0.8),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height / 48,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 25,
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Image.asset(
                    'assets/phn.png',
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6,
                    bottom: MediaQuery.of(context).size.height / 20,
                  ),
                  color: color.whiteT.withOpacity(.9),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                    //bottom: MediaQuery.of(context).size.height / 48,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: color.theme.withOpacity(0.8),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                              right: MediaQuery.of(context).size.height / 48,
                              left: MediaQuery.of(context).size.height / 48,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_chart,
                                  color: Color(0xff417FD9),
                                ),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    color: Color(0xff417FD9),
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 55,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 17,
                              width: MediaQuery.of(context).size.width / 8,
                              decoration: BoxDecoration(
                                  color: Color(0xffFBF6F3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  )),
                              child: Center(
                                  child: Text(
                                '\u2764',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ))),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5,
                  ),
                  child: Center(
                      child: Text(
                    "OnePlus 7T Dual Sim",
                    style: TextStyle(
                      color: color.black.withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height / 48,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$935.00 ",
                        style: TextStyle(
                          color: color.black.withOpacity(0.8),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 45,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$1,010.00 ",
                        style: TextStyle(
                          color: color.black.withOpacity(0.5),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height / 55,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffD1EFF7).withOpacity(0.7),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.height / 4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffD1EFF7).withOpacity(0.7),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.height / 4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffD1EFF7).withOpacity(0.7),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.height / 4,
          ),
        ],
      ),
    );
  }
}
