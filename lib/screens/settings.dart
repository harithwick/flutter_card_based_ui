import 'package:flutter/material.dart';
import 'package:flutter_card_based_ui/widgets/section_heading.dart';
import 'package:flutter_card_based_ui/widgets/settings_list_tile.dart';
import 'package:flutter_card_based_ui/widgets/sub_heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SectionHeading(heading: 'Settings'),
            SettingsListTile(
              icon: Icons.settings_brightness,
              title: 'Switch Theme',
              trailing: Switch(
                autofocus: true,
                activeColor: Colors.grey,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                value: true,
                onChanged: (val) {},
              ),
            ),
            SettingsListTile(
              icon: Icons.verified,
              title: "Free Version",
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SubHeading("Account"),
            SettingsListTile(
              icon: Icons.email,
              title: "jhon@gmail.com",
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SettingsListTile(
              icon: Icons.mark_email_read,
              title: "Email Verified",
              trailing: Icon(Icons.check),
            ),
            SettingsListTile(
              icon: Icons.vpn_key,
              title: "Reset Password",
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SettingsListTile(
              icon: Icons.exit_to_app,
              title: 'Logout',
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SubHeading("Misc"),
            SettingsListTile(
              icon: Icons.share,
              title: 'Share App With Friends',
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SettingsListTile(
              icon: Icons.info,
              title: 'About App',
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
