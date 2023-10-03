import 'package:flutter/material.dart';
import 'package:quiz1/account.dart';
import 'package:quiz1/calender.dart';
import 'package:quiz1/details.dart';
import 'package:quiz1/home.dart';

class NavigateScreen extends StatefulWidget {
  const NavigateScreen({super.key});
  static const String routeName = "navigateScreen";

  @override
  State<NavigateScreen> createState() => _NavigateScreenState();
}

class _NavigateScreenState extends State<NavigateScreen> {
  int index = 0;
  List<Widget> taps = [
    Home(),
    Details(),
    Calender(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: taps[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Color(0xFF027A48),
          unselectedItemColor: Color(0xFF667085),
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/details.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/caender.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/user.png")),
                label: ""),
          ]),
    ));
  }
}
