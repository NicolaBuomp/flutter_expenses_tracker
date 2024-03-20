import 'package:expenses_tracker/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenseve Tracker',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: const Color.fromARGB(255, 240, 240, 240),
              onBackground: Colors.black,
              primary: const Color(0xFF00B2E7),
              outline: Colors.grey.shade400)),
      home: const HomeScreen(),
    );
  }
}
