// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile_V extends StatefulWidget {
  const Profile_V({Key? key}) : super(key: key);

  @override
  State<Profile_V> createState() => _Profile_VState();
}

class _Profile_VState extends State<Profile_V> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(imageDefault),
              ),
              const SizedBox(height: 20),
              itemProfile('Name', 'Ahad Hashmi', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('Phone', '03107085816', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile(
                  'Address', 'abc address, xyz city', CupertinoIcons.location),
              const SizedBox(height: 10),
              itemProfile('Email', 'ahadhashmideveloper@gmail.com',
                  CupertinoIcons.mail),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAndToNamed(RouteName.pageLogin);
                    CherryToast.success(
                      inheritThemeColors: true,
                      title: const Text('Berhasil Keluar Akun'),
                      borderRadius: 10,
                    ).show(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(sPrimaryColor),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  child: Text(
                    'Keluar',
                    style: styleText(
                        whiteColor, 16, FontWeight.normal, TextDecoration.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.black.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
