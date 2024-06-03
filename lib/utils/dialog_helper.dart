import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class DialogHelper {
  // var controller = Get.put(AuthController());
  static void showErroDialog(
      {String? title = 'Error', String? deskription = 'Something wrong'}) {
    Get.dialog(Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "",
            style:
                styleText(blackColor, 20, FontWeight.bold, TextDecoration.none),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            deskription ?? '',
            style: styleText(
                blackColor, 15, FontWeight.normal, TextDecoration.none),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Ok"),
          )
        ],
      ),
    ));
  }

  static void showloading([String? message]) {
    Get.dialog(Dialog(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const CircularProgressIndicator(),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: SizedBox(
                  // height: Get.height,
                  child: LoadingAnimationWidget.inkDrop(
                    color: sPrimaryColor,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(message ?? "Loading..."),
              const SizedBox(
                height: 20.0,
              ),
            ],
          )),
    ));
  }

  static void showOngoing() {
    Get.defaultDialog(
      title: "!!",
      middleText: "Belum ada Fitur ini",
      backgroundColor: Colors.white,
      titleStyle: const TextStyle(color: Colors.black, fontFamily: 'Manrope'),
      middleTextStyle: const TextStyle(color: Colors.black),
      textCancel: "OK",
      cancelTextColor: Colors.black,
      buttonColor: sPrimaryColor,
      barrierDismissible: false,
    );
  }

  static void showloadingDialogOTP(String title, String deskription) {
    Get.dialog(Dialog(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style:
                styleText(blackColor, 20, FontWeight.bold, TextDecoration.none),
          ),
          Text(
            deskription,
            style: styleText(
                blackColor, 15, FontWeight.normal, TextDecoration.none),
          ),
          ElevatedButton(
            onPressed: () {
              // Get.offAllNamed(RouteName.page_vertifikasi);
            },
            child: const Text("Ok"),
          )
        ],
      ),
    )));
  }

  static void logOut([String? onYes]) {
    Get.dialog(Dialog(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 300,
          // width: Get.width * defaultMargin,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Material(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 15),
                    SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/images/DOOR.png',
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(height: 15),
                    Text(
                      'Keluar ?',
                      textAlign: TextAlign.center,
                      style: styleText(
                          blackColor, 14, FontWeight.w500, TextDecoration.none),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sPrimaryColor,
                            ),
                            onPressed: () {
                              onYes ?? "";
                            },
                            child: Text(
                              "Yes",
                              style: styleText(whiteColor, 12, FontWeight.w500,
                                  TextDecoration.none),
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: whiteColor,
                                side: const BorderSide(
                                  width: 1.0,
                                  color: Colors.red,
                                )),
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "No",
                              style: styleText(sPrimaryColor, 12,
                                  FontWeight.w500, TextDecoration.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    )));
  }

  static void deleteAll([String? onYes]) {
    Get.dialog(Dialog(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 300,
          // width: Get.width * defaultMargin,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Material(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 15),
                    const SizedBox(
                        height: 150,
                        width: 150,
                        child: Icon(
                          Icons.delete,
                          size: 150,
                          color: sPrimaryColor,
                        )),
                    const SizedBox(height: 15),
                    Text(
                      'Hapus Semua Data ?',
                      textAlign: TextAlign.center,
                      style: styleText(
                          blackColor, 14, FontWeight.w500, TextDecoration.none),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sPrimaryColor,
                            ),
                            onPressed: () {
                              onYes ?? "";
                            },
                            child: Text(
                              "Yes",
                              style: styleText(whiteColor, 12, FontWeight.w500,
                                  TextDecoration.none),
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: whiteColor,
                                side: const BorderSide(
                                  width: 1.0,
                                  color: Colors.red,
                                )),
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "No",
                              style: styleText(sPrimaryColor, 12,
                                  FontWeight.w500, TextDecoration.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    )));
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen == true) Get.back();
  }
}

class ErrorHandle {
  final String? error;
  final dynamic success;
  ErrorHandle(this.error, this.success);
}
