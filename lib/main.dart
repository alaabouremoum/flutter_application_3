import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/payment_page.dart';
import 'pages/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

