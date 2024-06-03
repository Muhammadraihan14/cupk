// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Survei_V extends StatefulWidget {
  const Survei_V({Key? key}) : super(key: key);

  @override
  State<Survei_V> createState() => _Survei_VState();
}

class _Survei_VState extends State<Survei_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
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
