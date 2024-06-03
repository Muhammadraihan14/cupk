import 'package:shared_preferences/shared_preferences.dart';
// import 'package:jagoaan_teach_ver/models/User.dart';

// ignore: constant_identifier_names
const EMAIL = 'email';
// ignore: constant_identifier_names
const NAME = 'name';
// ignore: constant_identifier_names
const TOKEN = 'token';
// ignore: constant_identifier_names
const IS_LOGIN = 'IS_LOGIN';
// ignore: constant_identifier_names
const IS_LOGIN_Google = 'IS_LOGIN_Google';

// ignore: constant_identifier_names
const ID = 'id';
const intro = 'intro';

Future createUserSession(
  String email,
  String name,
  String token,
  String id,
  String loadgg,
) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool(IS_LOGIN, true);
  prefs.setString(IS_LOGIN_Google, loadgg);
  prefs.setString(EMAIL, email);
  prefs.setString(NAME, name);
  prefs.setString(TOKEN, token);
  prefs.setString(ID, id);
}

Future createRegisSession(
  String email,
  String name,
  String token,
  String id,
  String loadgg,
) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(IS_LOGIN_Google, loadgg);

  prefs.setBool(IS_LOGIN, true);
  prefs.setString(EMAIL, email);
  prefs.setString(NAME, name);
  prefs.setString(TOKEN, token);
  prefs.setString(ID, id);
}

Future clearSession() async {
  final prefs = await SharedPreferences.getInstance();

  prefs.remove(EMAIL);
  prefs.remove(NAME);
  prefs.remove(TOKEN);
  prefs.remove(IS_LOGIN);
  prefs.remove(ID);
  var loadggA = prefs.getString('IS_LOGIN_Google');
  if (loadggA != null) {
    prefs.remove(IS_LOGIN_Google);
  }
}

Future introHandle() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool(intro, true);
}
