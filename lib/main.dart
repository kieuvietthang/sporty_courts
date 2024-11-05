import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/binding.dart';
import 'package:sporty_courts/route_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tracker App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      initialBinding: AppBinding(),
      initialRoute: '/splash',
      getPages: RoutePageApp.routePages,
    );
  }
}