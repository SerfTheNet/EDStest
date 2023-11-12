import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/core/theme.dart';
import 'package:eclipse_test/user_screen/user_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeBuilder.build(),
      builder: BotToastInit(),
      home: const UserScreen(),
    );
  }
}
