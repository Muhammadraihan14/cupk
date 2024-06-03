// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/route_names.dart';

class Splash_V extends StatefulWidget {
  const Splash_V({Key? key}) : super(key: key);

  @override
  State<Splash_V> createState() => _Splash_VState();
}

class _Splash_VState extends State<Splash_V> {
  //   void checkLogin() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   bool? login = pref.getBool('IS_LOGIN');
  //   bool? isIntro = pref.getBool('intro');
  //   if (login == true) {
  //     Get.offNamedUntil(RouteName.pageButtonNavigasi, (route) => false);
  //   } else if (isIntro == true) {
  //     Get.offAllNamed(RouteName.pageLogin);
  //     // print("jln2");
  //   } else {
  //     startSplashScreen();
  //   }
  // }
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      // introHandle();
      Get.offAllNamed(RouteName.pageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/image/logo.png", height: 180),
            ),
            Text(
              "CONNECT",
              style: styleText(
                  sPrimaryColor, 30, FontWeight.w900, TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
