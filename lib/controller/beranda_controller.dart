import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BerandaController extends GetxController {
  List<dynamic> hitungPinjaman(
      int lamaPinjamanBulan, double sukuBungaPersen, double jumlahPinjaman) {
    //   final List<int> jumlahHariPerBulan = [
    //   31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    // ];
    // double jumlahPerbulan = jumlahPinjaman /lamaPinjamanBulan
    double bungaPinjamanPerbulan =
        jumlahPinjaman / lamaPinjamanBulan * (sukuBungaPersen / 100);

    double angsuranPokok = jumlahPinjaman / lamaPinjamanBulan;

    double angsuranTotal = angsuranPokok * lamaPinjamanBulan +
        (bungaPinjamanPerbulan * lamaPinjamanBulan);
    // double angsuranTotal = angsuranPokok + (bungaPinjaman / lamaPinjamanBulan);

    DateTime tanggalHariIniObj =
        DateFormat('yyyy-MM-dd').parse(DateTime.now().toString());

    // Menambahkan jumlah hari
    DateTime hasil = tanggalHariIniObj.add(Duration(days: lamaPinjamanBulan));

    // Mengonversi kembali ke format string
    String hasilTanggal = DateFormat('yyyy-MM-dd').format(hasil);

    List<dynamic> hasilPerhitungan = [
      jumlahPinjaman,
      lamaPinjamanBulan,
      bungaPinjamanPerbulan,
      angsuranPokok,
      angsuranTotal,
      hasilTanggal
    ];
    return hasilPerhitungan;
  }
}
