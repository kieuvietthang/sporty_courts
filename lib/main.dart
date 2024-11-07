import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/binding.dart';
import 'package:sporty_courts/route_pages.dart';
import 'package:sporty_courts/screens/register/controller/register_controller.dart';
DotEnv dotenv = DotEnv();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/dotenv/.env");
  Get.put(RegisterController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RegisterController registerController = Get.find<RegisterController>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
          future: registerController.loadToken(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              // Kiểm tra xem token có tồn tại không
              return GetMaterialApp(
                title: 'Tracker App',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: false,
                ),
                initialBinding: AppBinding(),
                initialRoute:
                    registerController.token.isNotEmpty ? '/home' : '/splash',
                getPages: RoutePageApp.routePages,
              );
            }
          }),
    );
  }
}
