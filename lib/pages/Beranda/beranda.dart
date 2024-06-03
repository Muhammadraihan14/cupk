// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Beranda_V extends StatefulWidget {
  const Beranda_V({Key? key}) : super(key: key);

  @override
  State<Beranda_V> createState() => _Beranda_VState();
}

class _Beranda_VState extends State<Beranda_V> {
  List<String> images = [
    "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
    "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
    "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            Image.asset("assets/image/logo.png", height: 50),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "CONNECT",
              style: styleText(
                  sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
            ),
          ],
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(builder: (context) {
                List images = [
                  "https://img.freepik.com/free-photo/office-buildings-city_107420-95731.jpg?t=st=1713860802~exp=1713864402~hmac=9a502bebeceefa2d092dfec43235b361fba9414190bf143a1d4169376361f03f&w=740",
                  "https://img.freepik.com/free-photo/office-buildings-city_107420-95731.jpg?t=st=1713860802~exp=1713864402~hmac=9a502bebeceefa2d092dfec43235b361fba9414190bf143a1d4169376361f03f&w=740",
                  "https://img.freepik.com/free-photo/office-buildings-city_107420-95731.jpg?t=st=1713860802~exp=1713864402~hmac=9a502bebeceefa2d092dfec43235b361fba9414190bf143a1d4169376361f03f&w=740",
                  "https://img.freepik.com/free-photo/office-buildings-city_107420-95731.jpg?t=st=1713860802~exp=1713864402~hmac=9a502bebeceefa2d092dfec43235b361fba9414190bf143a1d4169376361f03f&w=740",
                  "https://img.freepik.com/free-photo/office-buildings-city_107420-95731.jpg?t=st=1713860802~exp=1713864402~hmac=9a502bebeceefa2d092dfec43235b361fba9414190bf143a1d4169376361f03f&w=740",
                ];

                return CarouselSlider(
                  options: CarouselOptions(
                    height: 160.0,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 1.0,
                    enlargeFactor: 1.0,
                    viewportFraction: 1.0,
                    clipBehavior: Clip.none,
                  ),
                  items: images.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                );
              }),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: Get.width,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RouteName.pageCicilan);
                      },
                      icon: const Icon(
                        Icons.receipt_long,
                        size: 30.0,
                        color: sPrimaryColor,
                      ),
                    ),
                    const Text("Cicilan Saya")
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: Get.width,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.toNamed(RouteName.pageSimulasi);
                              },
                              icon: const Icon(
                                Icons.insert_chart,
                                size: 30.0,
                                color: sPrimaryColor,
                              ),
                            ),
                            Text("Simulasi\nPinjaman",
                                textAlign: TextAlign.center,
                                style: styleText(blackColor, 12,
                                    FontWeight.normal, TextDecoration.none))
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.toNamed(RouteName.pageLokasi);
                              },
                              icon: const Icon(
                                Icons.location_on,
                                size: 30.0,
                                color: sPrimaryColor,
                              ),
                            ),
                            Text("Lokasi\nCUPK",
                                textAlign: TextAlign.center,
                                style: styleText(blackColor, 12,
                                    FontWeight.normal, TextDecoration.none))
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.toNamed(RouteName.pageDetailSurvei);
                              },
                              icon: const Icon(
                                Icons.edit,
                                size: 30.0,
                                color: sPrimaryColor,
                              ),
                            ),
                            Text("Polling\nSaya",
                                textAlign: TextAlign.center,
                                style: styleText(blackColor, 12,
                                    FontWeight.normal, TextDecoration.none))
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
