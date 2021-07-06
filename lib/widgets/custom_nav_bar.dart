import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatefulWidget {
  int pageIndex;
  final PageController controller;
  CustomNavBar({required this.pageIndex, required this.controller});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.teal.withOpacity(0.8),
          borderRadius: BorderRadius.all(Radius.circular(100)),
          boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 60,
              color: Colors.black.withOpacity(0.4),
              offset: Offset(0, 25),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: GNav(
          backgroundColor: Colors.transparent,
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 900),
          iconSize: 24,
          gap: 10,
          tabs: [
            GButton(
              icon: Icons.info,
              iconActiveColor: Colors.white,
              iconColor: Colors.white38,
              text: 'Exam Info',
              textColor: Colors.white,
              backgroundColor: Colors.yellowAccent.withOpacity(0.5),
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            ),
            GButton(
              icon: Icons.home,
              iconColor: Colors.white38,
              iconActiveColor: Colors.white,
              text: 'Home',
              textColor: Colors.white,
              backgroundColor: Colors.deepOrange.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            ),
            GButton(
              icon: Icons.settings,
              iconColor: Colors.white38,
              iconActiveColor: Colors.white,
              text: 'Settings',
              textColor: Colors.white,
              backgroundColor: Colors.blue.withOpacity(0.5),
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            ),
          ],
          selectedIndex: widget.pageIndex,
          onTabChange: (index) {
            setState(() {
              widget.pageIndex = index;
            });
            widget.controller.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
