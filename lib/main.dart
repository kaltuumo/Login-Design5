import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_design5/features/auth/screens/login/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Loginpage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {'/login': (context) => Loginpage()},
    );
  }
}
