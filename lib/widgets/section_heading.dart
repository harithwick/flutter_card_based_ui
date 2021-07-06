import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({required this.heading});

  final String heading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(heading,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
