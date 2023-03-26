import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kk3/constant.dart';
import 'package:kk3/models/data.dart';


class dashboard extends StatefulWidget {
  // static const routeName = "/dashboard";
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 24),
              child: Text(
                'Halo Markey',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: kTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Ayo kenali berbagai bahan makanan',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 19, left: 24, right: 24),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 26, left: 15),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Bermacam - macam buah diindonesia",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 18, right: 110),
                                width: double.infinity,
                                height: 26,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xffFAFAFA)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(7)),
                                    ),
                                  ),
                                  child: Text(
                                    'selengkapnya',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: kTextColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        )),
                    AspectRatio(
                      aspectRatio: 0.90,
                      child: Image.asset(
                        "assets/logoone.png",
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 32, left: 24, right: 24),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sayur - sayuran',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Bermacam macam sayuran',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    width: 100,
                    height: 26,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFF01B763)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ),
                      child: Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: kTwoTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Container(
                      width: 154,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kTwoTextColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kBorder,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 0),
                            child: Container(
                              width: double.infinity,
                              height: 94,
                              decoration: BoxDecoration(
                                color: Color(0xFF48FFAB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(recipeBundles[0].imageSrc),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipeBundles[0].judul,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 72),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                    child: Container(
                      width: 154,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kTwoTextColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kBorder,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 0),
                            child: Container(
                              width: double.infinity,
                              height: 94,
                              decoration: BoxDecoration(
                                color: Color(0xFF48FFAB),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Image.asset(recipeBundles[1].imageSrc),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipeBundles[1].judul,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 72),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 24, right: 24),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Daging',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Bermacam macam daging',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 26,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFF01B763)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ),
                      child: Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: kTwoTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Container(
                      width: 154,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kTwoTextColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kBorder,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 0),
                            child: Container(
                              width: double.infinity,
                              height: 94,
                              decoration: BoxDecoration(
                                color: kThreeDaging,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(recipeBundles[3].imageSrc),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipeBundles[3].judul,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 72),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                    child: Container(
                      width: 154,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kTwoTextColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kBorder,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 0),
                            child: Container(
                              width: double.infinity,
                              height: 94,
                              decoration: BoxDecoration(
                                color: kThreeDaging,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(recipeBundles[2].imageSrc),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipeBundles[2].judul,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 72),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
