// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cupk_connect/core/form.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Cicilan_V extends StatefulWidget {
  const Cicilan_V({Key? key}) : super(key: key);

  @override
  State<Cicilan_V> createState() => _Cicilan_VState();
}

class _Cicilan_VState extends State<Cicilan_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: sPrimaryColor,
        child: const Icon(Icons.add, color: whiteColor),
      ),
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
              "Cicilan Saya",
              style: styleText(
                  sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
            ),
          ],
        ),
        actions: const [],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    child: Formlogin(
                      // controller: jumlahController,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "wajib diisi";
                        }
                        return null;
                      },
                      // type: TextInputType.number,
                      // hintText: "Jumlah Pinjaman",
                      password: false,
                      textColor: blackColor,
                      // suffixIcon: const Icon(Icons.search),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: sPrimaryColor,
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(sPrimaryColor),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Cari',
                      style: styleText(whiteColor, 16, FontWeight.normal,
                          TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                    itemCount: 18,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        "Bulan April",
                                        style: styleText(
                                            whiteColor,
                                            16,
                                            FontWeight.w700,
                                            TextDecoration.none),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        "Sudah Dibayar",
                                        style: styleText(
                                            whiteColor,
                                            11,
                                            FontWeight.w700,
                                            TextDecoration.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                width: Get.width,
                                // height: 50,
                                child: Text(
                                    style: styleText(blackColor, 16,
                                        FontWeight.normal, TextDecoration.none),
                                    "Jumlah Yang Harus Dibayar"),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                width: Get.width,
                                // height: 50,
                                child: Text(
                                    style: styleText(blackColor, 12,
                                        FontWeight.normal, TextDecoration.none),
                                    "Bayar Sebelum 1 Juni"),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      );
                    })
                .animate()
                .fadeIn(duration: 1000.ms, curve: Curves.easeOutQuad)
                .slide(),
          )
        ],
      ),
    );
  }
}
