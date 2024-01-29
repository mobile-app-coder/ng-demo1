import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  static const String id = "settings_page";

  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text("Settings${userId ?? "your app is fucked"}"),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
