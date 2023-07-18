import 'package:flutter/material.dart';
import 'package:iot_app/Main/home_page.dart';
import 'package:iot_app/Main/setting_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  final GlobalKey _bottomKey = GlobalKey();

  final List<Widget> page = [
    const HomePage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: page[_page],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomKey,
          index: 0,
          backgroundColor: Colors.transparent,
          color: Colors.black87,
          height: 60,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeInSine,
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
      ),
    );
  }
}
