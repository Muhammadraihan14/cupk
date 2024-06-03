import 'package:cupk_connect/pages/Beranda/beranda.dart';
import 'package:cupk_connect/pages/Forum/forum.dart';
import 'package:cupk_connect/pages/Pengajuan/pengajuan.dart';
import 'package:cupk_connect/pages/Saya/profile.dart';
import 'package:flutter/material.dart';
import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';

import '../utils/constans.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _currentPage = 0;
  final ScrollController _scrollController = ScrollController();
  final pages = [
    const Beranda_V(),
    const Pengajuan_V(),
    const Forum_V(),
    const Profile_V(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentPage],
      bottomNavigationBar: DotCurvedBottomNav(
        scrollController: _scrollController,

        hideOnScroll: true,
        indicatorColor: sPrimaryColor,
        backgroundColor: kPrimaryColor,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.ease,
        // margin: const EdgeInsets.all(0),
        selectedIndex: _currentPage,
        indicatorSize: 5,
        borderRadius: 25,
        height: 70,
        onTap: (index) {
          setState(() => _currentPage = index);
        },
        items: [
          Icon(
            Icons.home,
            color: _currentPage == 0 ? sPrimaryColor : Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            color: _currentPage == 1 ? sPrimaryColor : Colors.white,
          ),
          Icon(
            Icons.explore,
            color: _currentPage == 2 ? sPrimaryColor : Colors.white,
          ),
          Icon(
            Icons.person,
            color: _currentPage == 3 ? sPrimaryColor : Colors.white,
          ),
        ],
      ),
    );
  }
}
