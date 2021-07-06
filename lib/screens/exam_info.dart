import 'package:flutter/material.dart';
import 'package:flutter_card_based_ui/widgets/exam_info_card.dart';
import 'package:flutter_card_based_ui/widgets/section_heading.dart';

class ExamInfo extends StatefulWidget {
  @override
  _ExamInfoState createState() => _ExamInfoState();
}

class _ExamInfoState extends State<ExamInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SectionHeading(heading: 'Exam Information'),
            ExamInfoCard(
                imagePath: "./assets/icons/format.png",
                label: "Test Format",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/marking.png",
                label: "Marking Criteria",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/bookTest.png",
                label: "Book Test",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/studyPlan.png",
                label: "Study Plan",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/studyTips.png",
                label: "Study Tips",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/faq.png",
                label: "Frequently Asked Questions",
                route: () {}),
            ExamInfoCard(
                imagePath: "./assets/icons/personal.png",
                label: "Get Personal Help",
                route: () {}),
          ],
        ),
      ),
    );
    ;
  }
}
