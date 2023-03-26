import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kk3/constant.dart';
import 'package:kk3/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk3/page/dashboard.dart';
import 'package:kk3/page/register.dart';
import 'package:http/http.dart' as http;


class loginnn extends StatefulWidget {
  const loginnn({super.key});

  @override
  State<loginnn> createState() => _loginnnState();
}

class _loginnnState extends State<loginnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        color: Color(0xFF01B763),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                          bottom: 50,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                'Lets Sign In',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24, top: 50,),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: 'username or E-mail',
                                          prefixIcon: Icon(Icons.person_outline_outlined),
                                          ),

                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          labelText: 'password',
                                          prefixIcon: Icon(Icons.lock_outlined)
                                          ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 25),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff01B763)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Sign In'.toUpperCase()),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => dashboard())));
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Don’t have an account? ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              TextButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/register');
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
