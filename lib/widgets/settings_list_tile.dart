import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailing;

  const SettingsListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
          leading: Icon(icon),
          title: Text(title,
              softWrap: false, style: Theme.of(context).textTheme.bodyText2),
          trailing: trailing),
    );
  }
}
