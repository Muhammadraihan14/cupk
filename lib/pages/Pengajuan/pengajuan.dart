// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_types_as_parameter_names

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cupk_connect/core/form.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:cupk_connect/utils/dialog_helper.dart';
import 'package:floating_menu_panel/floating_menu_panel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Pengajuan_V extends StatefulWidget {
  const Pengajuan_V({Key? key}) : super(key: key);

  @override
  State<Pengajuan_V> createState() => _Pengajuan_VState();
}

class _Pengajuan_VState extends State<Pengajuan_V> {
  final List<Pinjaman> pinjamanList = [
    Pinjaman(
      jenisPinjaman: JenisPinjaman.kendaraan,
      status: StatusPinjaman.diterima,
      biaya: 15000000,
      tenggatTanggal: DateTime(2024, 5, 15),
    ),
    Pinjaman(
      jenisPinjaman: JenisPinjaman.perkebunan,
      status: StatusPinjaman.diproses,
      biaya: 10000000,
      tenggatTanggal: DateTime(2024, 5, 20),
    ),
    Pinjaman(
      jenisPinjaman: JenisPinjaman.rumah,
      status: StatusPinjaman.ditolak,
      biaya: 20000000,
      tenggatTanggal: DateTime(2024, 5, 10),
    ),
  ];
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
                          itemCount: pinjamanList.length,
                          itemBuilder: (context, index) {
                            final pinjaman = pinjamanList[index];
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Container(
                                // height: 410,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              _jenisPinjamanToString(
                                                  pinjaman.jenisPinjaman),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  _statusColor(pinjaman.status),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              _statusPinjamanToString(
                                                  pinjaman.status),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: const Text(
                                        "Jumlah Yang Harus Dibayar",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "Bayar Sebelum ${pinjaman.tenggatTanggal.toString()}",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
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
          ),
          FloatingMenuPanel(
            positionTop: 300,
            positionLeft: Get.width / 1.3,
            dockType: DockType.inside,
            panelIcon: Icons.add,
            backgroundColor: sPrimaryColor,
            onPressed: (int) {
              if (int == 0) {
              } else {
                DialogHelper.deleteAll();
              }
            },
            buttons: const [
              Icons.create,
              Icons.delete,
            ],
          )
        ],
      ),
    );
  }

  String _jenisPinjamanToString(JenisPinjaman jenisPinjaman) {
    switch (jenisPinjaman) {
      case JenisPinjaman.kendaraan:
        return 'Pinjaman Kendaraan';
      case JenisPinjaman.perkebunan:
        return 'Pinjaman Perkebunan';
      case JenisPinjaman.rumah:
        return 'Pinjaman Rumah';
      default:
        return '';
    }
  }

  String _statusPinjamanToString(StatusPinjaman statusPinjaman) {
    switch (statusPinjaman) {
      case StatusPinjaman.diterima:
        return 'Diterima';
      case StatusPinjaman.diproses:
        return 'Diproses';
      case StatusPinjaman.ditolak:
        return 'Ditolak';
      default:
        return '';
    }
  }

  Color _statusColor(StatusPinjaman statusPinjaman) {
    switch (statusPinjaman) {
      case StatusPinjaman.diterima:
        return Colors.green;
      case StatusPinjaman.diproses:
        return Colors.orange;
      case StatusPinjaman.ditolak:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

// Model dan enums
enum JenisPinjaman { kendaraan, perkebunan, rumah }

enum StatusPinjaman { diterima, diproses, ditolak }

class Pinjaman {
  final JenisPinjaman jenisPinjaman;
  final StatusPinjaman status;
  final double biaya;
  final DateTime tenggatTanggal;

  Pinjaman({
    required this.jenisPinjaman,
    required this.status,
    required this.biaya,
    required this.tenggatTanggal,
  });
}
