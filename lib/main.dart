import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kk3/constant.dart';
import 'package:kk3/page/dashboard.dart';
import 'package:kk3/page/login.dart';
import 'package:kk3/page/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScrenn(),
        '/login': (context) => loginnn(),
        '/register': (context) => register(), // tambahkan route '/register'
        '/dashboard': (context) => dashboard(),
      },
    );
  }
}

class SplashScrenn extends StatefulWidget {
  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginnn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff01B763),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              width: 100,
              height: 100,
            ),
            Padding(padding: const EdgeInsets.only(bottom: 11.0)),
            Text(
              'Markey',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

