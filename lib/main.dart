import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenGrocer',
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: const SignInScreen(),
    );
  }
}
