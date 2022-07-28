import 'package:flutter/material.dart';
import 'package:task3/screens/home_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomeScreen(),
    );
  }
}
