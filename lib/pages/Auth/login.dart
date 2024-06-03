// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

class Login_v extends StatefulWidget {
  const Login_v({Key? key}) : super(key: key);

  @override
  State<Login_v> createState() => _Login_vState();
}

class _Login_vState extends State<Login_v> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: FadeInUp(
                        duration: const Duration(seconds: 1),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/image/background.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Positioned(
                    height: 400,
                    width: width + 20,
                    child: FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/image/background-2.png'),
                                  fit: BoxFit.fill)),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1500),
                      child: Text("Masuk",
                          style: styleText(kPrimaryColor, 30, FontWeight.normal,
                              TextDecoration.none))),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(196, 135, 198, .3)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(196, 135, 198, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(
                                              196, 135, 198, .3)))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade700)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade700)),
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: MaterialButton(
                        onPressed: () {
                          // Get.toNamed(
                          //   RouteName.pageButtonNavigasi,
                          // );
                          // Get.offAndToNamed(RouteName.pageButtonNavigasi);
                          Get.offAndToNamed(RouteName.pageButtonNavigasi);
                          CherryToast.success(
                            disableToastAnimation: true,
                            title: const Text(
                              'Berhasil Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            action: const Text('Toast content description'),
                            inheritThemeColors: true,
                            actionHandler: () {},
                            onToastClosed: () {},
                          ).show(context);
                        },
                        color: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: Center(
                          child: TextButton(
                              onPressed: () {
                                Get.toNamed(RouteName.pageRegister);
                              },
                              child: Text(
                                "Buat Akun",
                                style: styleText(kPrimaryColor, 15,
                                    FontWeight.normal, TextDecoration.none),
                              )))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
