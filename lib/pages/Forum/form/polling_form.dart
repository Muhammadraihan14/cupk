// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PoolingForm extends StatefulWidget {
  const PoolingForm({Key? key}) : super(key: key);

  @override
  State<PoolingForm> createState() => _PoolingFormState();
}

class _PoolingFormState extends State<PoolingForm> {
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
              "Buat Polling",
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
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
