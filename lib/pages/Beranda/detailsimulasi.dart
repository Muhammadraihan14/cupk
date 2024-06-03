// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class DetailSimulasi_V extends StatefulWidget {
  const DetailSimulasi_V({Key? key}) : super(key: key);

  @override
  State<DetailSimulasi_V> createState() => _DetailSimulasi_VState();
}

class _DetailSimulasi_VState extends State<DetailSimulasi_V> {
  late ScrollController _controller1;
  late ScrollController _controller2;

  @override
  void initState() {
    super.initState();
    _controller1 = ScrollController();
    _controller2 = ScrollController();
    _controller1.addListener(_scrollListener);
    _controller2.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller1.removeListener(_scrollListener);
    _controller2.removeListener(_scrollListener);
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_controller1.position.userScrollDirection == ScrollDirection.forward ||
        _controller1.position.userScrollDirection == ScrollDirection.reverse) {
      // Jika user melakukan scroll pada controller 1, sinkronkan dengan controller 2
      _controller2.jumpTo(_controller1.position.pixels);
    } else if (_controller2.position.userScrollDirection ==
            ScrollDirection.forward ||
        _controller2.position.userScrollDirection == ScrollDirection.reverse) {
      // Jika user melakukan scroll pada controller 2, sinkronkan dengan controller 1
      _controller1.jumpTo(_controller2.position.pixels);
    }
  }

  List<Widget> _buildCells(int count) {
    return List.generate(
      count,
      (index) => Container(
        alignment: Alignment.center,
        width: 120.0,
        height: 60.0,
        color: Colors.white,
        margin: const EdgeInsets.all(4.0),
        child:
            Text("${index + 1}", style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }

  List<String> header = [
    "SDN",
    "PINJAMAN",
    "ANGSURAN",
    "BUNGA",
    "SISA PINJAMAN",
    "ID",
  ];

  List<Widget> _buildRows(int count) {
    return List.generate(
      count,
      (index) => Row(
        children: _buildCells(10),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: header.map((title) {
        return Container(
          alignment: Alignment.center,
          width: 120.0,
          height: 60.0,
          color: Colors.grey[300],
          margin: const EdgeInsets.all(4.0),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 120.0,
                    height: 60.0,
                    color: Colors.grey[300],
                    margin: const EdgeInsets.all(4.0),
                    child: Text("Bulan",
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  SingleChildScrollView(
                      controller: _controller1,
                      scrollDirection: Axis.horizontal,
                      child: _buildHeader()),
                ],
              ),
            ), // Menambahkan baris header
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildCells(20),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    controller: _controller2,
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildRows(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
