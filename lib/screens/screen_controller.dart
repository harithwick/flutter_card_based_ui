import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_based_ui/screens/settings.dart';
import 'package:flutter_card_based_ui/widgets/custom_nav_bar.dart';

import 'exam_info.dart';
import 'home.dart';

class ScreenController extends StatefulWidget {
  @override
  _ScreenControllerState createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  PageController controller = PageController(initialPage: 1);
  int _index = 1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBody: true,
        body: PageView(
          controller: controller,
          onPageChanged: (page) {
            setState(() {
              _index = page;
            });
          },
          children: <Widget>[ExamInfo(), Home(), Settings()],
        ),
        bottomNavigationBar: CustomNavBar(
          controller: controller,
          pageIndex: _index,
        ));
  }
}
