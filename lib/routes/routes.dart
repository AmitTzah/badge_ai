import 'package:badge_ai/pages/home.dart';
import 'package:badge_ai/pages/login.dart';
import 'package:badge_ai/pages/qr_scan.dart';
import 'package:badge_ai/pages/register.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String login = '/';
  static const String register = '/register';
  static const String homePage = '/homePage';
  static const String qrScan = '/homePage/QRscan';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );

      case register:
        return MaterialPageRoute(
          builder: (context) => SignupScreen(),
        );

      case homePage:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case qrScan:
        return MaterialPageRoute(
          builder: (context) => QRScan(),
        );

      default:
        throw const FormatException(
            'Route not found, check routes.dart again!');
    }
  }
}