import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_based_ui/widgets/grid_button.dart';
import 'package:flutter_card_based_ui/widgets/sub_heading.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: FlutterLogo(
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _introText() {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 16, 10, 0),
      child: Text('All study material for the translation exam in one place.',
          style: Theme.of(context).textTheme.bodyText2),
    );
  }

  Widget _greeting() {
    var hour = DateTime.now().hour;
    String greeting;
    if (hour < 12) {
      greeting = 'Morning!';
    }
    if (hour < 17) {
      greeting = 'Afternoon!';
    }
    greeting = 'Evening!';

    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Text(
        "Good $greeting",
        style: GoogleFonts.aBeeZee(
            color: Colors.deepOrange,
            letterSpacing: 0.7,
            fontSize: 25,
            fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget _introButtons() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          child: OutlineButton(
            onPressed: () {},
            child: Text("Learn More"),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          child: FlatButton(
            color: Colors.deepOrange,
            onPressed: () {},
            child: Text(
              "Intro Lecture",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cards() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        children: [
          GridButton(
              percentage: 0.1,
              progressBar: true,
              onPressedCallback: () {},
              icon: 'assets/icons/chat.png',
              text: "Improve Vocabulary"),
          GridButton(
              percentage: 1.0,
              progressBar: true,
              icon: 'assets/icons/quiz.png',
              onPressedCallback: () {},
              text: "Quizzes"),
          GridButton(
              percentage: 0.4,
              progressBar: true,
              onPressedCallback: () {},
              icon: 'assets/icons/notes.png',
              text: "Note Taking"),
          GridButton(
              percentage: 0.4,
              progressBar: true,
              onPressedCallback: () {},
              icon: 'assets/icons/practice.png',
              text: "Practice Dialogues"),
          GridButton(
              percentage: 0.7,
              progressBar: true,
              icon: 'assets/icons/finalExam.png',
              onPressedCallback: () {},
              text: "Exam Dialogues"),
          GridButton(
              percentage: 0.0,
              progressBar: false,
              icon: 'assets/icons/savedWords.png',
              onPressedCallback: () {},
              text: "Saved Challanging Words"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            _greeting(),
            _introText(),
            SizedBox(height: 8),
            _introButtons(),
            SizedBox(height: 10),
            SubHeading('Study Material'),
            _cards(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
