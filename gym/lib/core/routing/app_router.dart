import 'package:flutter/material.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/features/auth/ui/screens/login_screen.dart';
import 'package:gym/features/auth/ui/screens/register_screen.dart';
import 'package:gym/features/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registersScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder:
              (_) => const Scaffold(
                body: Center(child: Text("Page not found")),
              ),
        );
    }
  }
}
