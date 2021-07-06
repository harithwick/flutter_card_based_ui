import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GridButton extends StatelessWidget {
  GridButton(
      {required this.text,
      required this.icon,
      required this.onPressedCallback,
      required this.percentage,
      required this.progressBar});

  final String text;
  final String icon;
  final Function onPressedCallback;
  final bool progressBar;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () => onPressedCallback,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                icon,
                height: 40,
              ),
              Text(
                text,
                textAlign: TextAlign.left,
              ),
              progressBar
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: LinearPercentIndicator(
                        animation: true,
                        animationDuration: 1300,
                        lineHeight: 8.0,
                        percent: percentage,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: percentage != 1
                            ? Colors.lightBlueAccent
                            : Colors.lightGreenAccent,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
