// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// import 'package:cupk_connect/core/form.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Loaksi_V extends StatefulWidget {
  const Loaksi_V({Key? key}) : super(key: key);

  @override
  State<Loaksi_V> createState() => _Loaksi_VState();
}

class _Loaksi_VState extends State<Loaksi_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                color: whiteColor,
                Icons.arrow_back,
                size: 24.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Lokasi Kantor CUPK",
              style: styleText(
                  sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
            ),
          ],
        ),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
                itemCount: 18,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: GestureDetector(
                      onTap: () {
                        _launchInWebView(Uri.parse(
                            "https://www.google.com/maps/place/KSP+CU+Pancur+Kasih/@-0.032768,109.2119852,12z/data=!4m6!3m5!1s0x2e1d586aa8bc8f8b:0xe546e9d49dd7b525!8m2!3d-0.0000741!4d109.3644198!16s%2Fg%2F11b6jk9d9d?entry=ttu"));
                      },
                      child: Container(
                        // height: 410,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Lokasi",
                                      style: styleText(
                                          blackColor,
                                          18,
                                          FontWeight.normal,
                                          TextDecoration.none),
                                    ),
                                    Text(
                                      "Link Lokasi",
                                      style: styleText(
                                          blackColor,
                                          16,
                                          FontWeight.normal,
                                          TextDecoration.none),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 50.0,
                                ),
                                Expanded(
                                    child: Container(
                                  height: 100,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/image/image 4.png"),
                                          fit: BoxFit.cover)),
                                  child: const Column(),
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            .animate()
            .fadeIn(duration: 1000.ms, curve: Curves.easeOutQuad)
            .slide(),
      ),
    );
  }

  Future<void> _launchInWebView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }
}
