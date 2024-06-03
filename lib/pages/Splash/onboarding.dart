// ignore_for_file: camel_case_types, avoid_print

import 'package:concentric_transition/concentric_transition.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final pages = [
  const PageData(
    // icon: Icons.abc,
    image: "assets/image/1.png",
    title: "Kemudahan Akses\nAnggota Koperasi",
    bgColor: Color(0xFF262362),
    textColor: Colors.white,
  ),
  const PageData(
    // icon: Icons.format_size,
    image: "assets/image/3.png",
    title: "Pilihan Untuk\nTerkoneksi",
    textColor: Colors.white,
    bgColor: sPrimaryColor,
  ),
  const PageData(
    // icon: Icons.hdr_weak,
    image: "assets/image/2.png",
    title: "Diskusi Anggota\nKoperasi",
    bgColor: Color(0xFFFFFFFF),
  ),
];

class Onboarding_V extends StatelessWidget {
  const Onboarding_V({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConcentricPageView(
        onFinish: () {
          Get.offAndToNamed(RouteName.pageLogin);
        },
        colors: pages.map((p) => p.bgColor).toList(),
        radius: screenWidth * 0.1,
        curve: Curves.ease,
        nextButtonBuilder: (context) => Padding(
          padding: const EdgeInsets.only(left: 3), // visual center
          child: Icon(
            Icons.navigate_next,
            size: screenWidth * 0.08,
          ),
        ),
        itemCount: pages.length,
        duration: const Duration(milliseconds: 1500),
        opacityFactor: 2.0,
        scaleFactor: 0.2,
        verticalPosition: 0.7,
        direction: Axis.vertical,
        // itemCount: pages.length,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (index) {
          // print(index);
          final page = pages[index % pages.length];
          return SafeArea(
            child: _Page(page: page),
          );
        },
      ),
    );
  }
}

class PageData {
  final String? title;
  // final IconData? icon;
  final String image;

  // image: "assets/images/1",
  final Color bgColor;
  final Color textColor;

  const PageData({
    this.title,
    required this.image,
    // this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class _Page extends StatelessWidget {
  final PageData page;

  const _Page({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    space(double p) => SizedBox(height: screenHeight * p / 100);
    return Column(
      children: [
        space(10),
        _Image(
          page: page,
          size: 190,
          iconSize: 170,
        ),
        space(8),
        _Text(
          page: page,
          style: TextStyle(
            fontSize: screenHeight * 0.046,
          ),
        ),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.page,
    this.style,
  }) : super(key: key);

  final PageData page;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      page.title ?? '',
      style: TextStyle(
        color: page.textColor,
        fontWeight: FontWeight.w600,
        fontFamily: 'Helvetica',
        letterSpacing: 0.0,
        fontSize: 18,
        height: 1.2,
      ).merge(style),
      textAlign: TextAlign.center,
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.page,
    required this.size,
    required this.iconSize,
  }) : super(key: key);

  final PageData page;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: size,
      // height: size,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
        // color: bgColor,
      ),
      child: Image.asset(
        page.image,
        // size: iconSize + 20,
        // color: icon1Color,
      ),
    );
  }
}
