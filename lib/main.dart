import 'package:flutter/material.dart';
import 'package:quiz1/navigate_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavigateScreen.routeName,
      routes: {
        NavigateScreen.routeName: (context) => NavigateScreen(),
      },
    );
  }
}
