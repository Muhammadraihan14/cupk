import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:shared_preferences/shared_preferences.dart';

//warna
const kPrimaryColor = Color(0xFF262362);
const sPrimaryColor = Color(0xFFD80032);
const loginColor = Color(0xff3F97FD);

const bgColor = Color(0xFFF5F5F5);

// background: #;

// ignore: use_full_hex_values_for_flutter_colors
const tagColor = Color(0xff478bf833);
const bleuColor = Color(0xff4896F2);
const lgbgColor = Color(0xff3F97FD);

// background: #;

const whiteColor = Colors.white;
const blackColor = Colors.black;
const greyColor = Colors.grey;
const bannerColor = Color.fromRGBO(213, 213, 213, 2.0);

const activeColor = Colors.black;
const inActiveColor = Colors.grey;

const double defaultMargin = 24;

const publishColor = Color(0xff0276FF);
const draftColor = Colors.yellow;
const inactiveColor = Colors.red;
const paidColor = Colors.green;

// const draftColorPDF = PdfColors.yellow;
// const publishColorPDF = PdfColors.blue;
// const inactiveColorPDF = PdfColors.red;
// const paidColorPDF = PdfColors.green;

//Text
TextStyle styleText(Color color, double fontSize, FontWeight fonWeigt,
        TextDecoration deco) =>
    GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        fontWeight: fonWeigt,
        decoration: deco);

var hurufBesar =
    styleText(blackColor, 20, FontWeight.bold, TextDecoration.none);
var hurufKecil =
    styleText(blackColor, 12, FontWeight.normal, TextDecoration.none);
var hurufKecilBesar =
    styleText(whiteColor, 15, FontWeight.bold, TextDecoration.none);
var hurufKecilPutih =
    styleText(whiteColor, 12, FontWeight.normal, TextDecoration.none);
var hurufNormal =
    styleText(whiteColor, 14, FontWeight.normal, TextDecoration.none);
var hurufNormalBlack =
    styleText(blackColor, 14, FontWeight.normal, TextDecoration.none);
var hurufSedang =
    styleText(blackColor, 15, FontWeight.normal, TextDecoration.none);
var hurufSedangBold =
    styleText(blackColor, 15, FontWeight.bold, TextDecoration.none);
var hurufBox = styleText(whiteColor, 12, FontWeight.bold, TextDecoration.none);
var hurufAPPbar =
    styleText(blackColor, 20, FontWeight.normal, TextDecoration.none);

var hurufDepan =
    styleText(blackColor, 17, FontWeight.w700, TextDecoration.none);
var hurufDepanDeskripsi =
    styleText(blackColor, 14, FontWeight.w400, TextDecoration.none);

// style login
var huruflogin =
    styleText(blackColor, 16, FontWeight.w500, TextDecoration.none);
var hurufloginDeskripsi =
    styleText(blackColor, 12, FontWeight.w400, TextDecoration.none);
var hurufHint =
    styleText(greyColor, 12, FontWeight.normal, TextDecoration.none);

var imageDefault =
    "https://img.freepik.com/free-photo/beautiful-portrait-teenager-woman_23-2149453395.jpg?w=740&t=st=1703247821~exp=1703248421~hmac=d72f10d873e428d186b1594bc95b39cec41c7b4b7c07d0fc60233a7fd159472d";

var paddingDefault = const EdgeInsets.symmetric(horizontal: 20);

//Ukuran
class Dimensions {
  static double screenWeight = Get.mediaQuery.size.width;
  static double screenHeight = Get.mediaQuery.size.height;
}

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}

// ignore: camel_case_extensions
extension toLokalTime on DateTime {
  String toLokal() {
    initializeDateFormatting();
    try {
      return DateFormat.yMMMMEEEEd('id').add_jm().format(this);
    } catch (e) {
      return "";
    }
  }
}
