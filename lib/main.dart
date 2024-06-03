import 'package:cupk_connect/routes/page_routes.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() async {
  final FlutterLocalization localization = FlutterLocalization.instance;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(GetMaterialApp(
      localizationsDelegates: localization.localizationsDelegates,
      supportedLocales: const [
        Locale('id', 'ID'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute:
          // RouteName.pageScreen,
          kDebugMode ? RouteName.pageScreen : RouteName.pageScreen,
      // RouteName.pageScreen,

      getPages: ROUTES.pages));
}
