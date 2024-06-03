// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostingForm extends StatefulWidget {
  const PostingForm({Key? key}) : super(key: key);

  @override
  State<PostingForm> createState() => _PostingFormState();
}

class _PostingFormState extends State<PostingForm> {
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
              "Buat Posting",
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
