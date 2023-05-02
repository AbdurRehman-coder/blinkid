
import 'package:blinkid/view/screens/auth/login_screen.dart';
import 'package:blinkid/view/screens/auth/verify_otp_screen.dart';
import 'package:blinkid/view/screens/splash_screens/location_access_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/screens/splash_screens/splash_screen.dart';

class Routes {
  static final mainNavigatorKey = GlobalKey<NavigatorState>();
  /// Route Name
  static const String splash = 'splash_screen';
  static const String locationAccessScreen = 'location_access_screen';
  static const String loginScreen = 'login_screen';
  static const String verifyOTPScreen = 'verify_otp_screen';


  /// Route is data type
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case locationAccessScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LocationAccessScreen());
        case loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
        case verifyOTPScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => VerifyOtpScreen());

        /// default
      default:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const Scaffold(
            body: Center(
              child: Text('No route directory'),
            ),
          );
        });
    }
  }
}