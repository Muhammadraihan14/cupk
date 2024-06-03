import 'package:cupk_connect/core/nav.dart';
import 'package:cupk_connect/pages/Auth/login.dart';
import 'package:cupk_connect/pages/Auth/regis.dart';
import 'package:cupk_connect/pages/Beranda/cicilan.dart';
import 'package:cupk_connect/pages/Beranda/detailsimulasi.dart';
import 'package:cupk_connect/pages/Beranda/lokasi.dart';
import 'package:cupk_connect/pages/Beranda/simulasi.dart';
import 'package:cupk_connect/pages/Beranda/survei.dart';
import 'package:cupk_connect/pages/Forum/form/polling_form.dart';
import 'package:cupk_connect/pages/Forum/forum_detail.dart';
import 'package:cupk_connect/pages/Polling/polling.dart';
import 'package:cupk_connect/pages/Splash/onboarding.dart';
import 'package:cupk_connect/pages/Splash/splash.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:get/get.dart';

class ROUTES {
  static final pages = [
    //SPALSH SCREEN
    GetPage(name: RouteName.pageScreen, page: (() => const Splash_V())),
    GetPage(name: RouteName.pageIndex, page: (() => const Onboarding_V())),
    GetPage(name: RouteName.pageSimulasi, page: (() => const Simulasi_V())),
    GetPage(
        name: RouteName.pageDetailSimulasi,
        page: (() => const DetailSimulasi_V())),
    GetPage(name: RouteName.pageCicilan, page: (() => const Cicilan_V())),
    GetPage(name: RouteName.pageLokasi, page: (() => const Loaksi_V())),
    GetPage(name: RouteName.pageLogin, page: (() => const Login_v())),
    GetPage(name: RouteName.pageRegister, page: (() => const Regis_v())),
    GetPage(
        name: RouteName.pageButtonNavigasi, page: (() => const MyHomePage())),

    GetPage(name: RouteName.pageSurvei, page: (() => const Survei_V())),
    GetPage(name: RouteName.pageFormSurvei, page: (() => const PoolingForm())),
    GetPage(
        name: RouteName.pageDetailSurvei, page: (() => const Polling_Saya_V())),
    GetPage(
        name: RouteName.pageDetailForum, page: (() => const Forumdetail_V())),
  ];
}
