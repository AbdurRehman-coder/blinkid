import 'package:blinkid/resources/utils/routes.dart';
import 'package:blinkid/view/screens/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      // home: SplashScreen(),
      initialRoute: Routes.splash,
      // initialRoute: Routes.productDetail,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
