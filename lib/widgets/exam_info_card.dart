import 'package:flutter/material.dart';

class ExamInfoCard extends StatelessWidget {
  const ExamInfoCard({
    required this.imagePath,
    required this.label,
    required this.route,
  });
  final String imagePath;
  final String label;
  final Function route;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
          leading: Image.asset(
            imagePath,
            height: 30,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text(label, style: Theme.of(context).textTheme.bodyText2),
          onTap: () {}),
    );
  }
}
