import 'package:flutter/material.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/features/auth/ui/screens/forgot_password.dart';
import 'package:gym/features/auth/ui/screens/login_screen.dart';
import 'package:gym/features/auth/ui/screens/register_screen.dart';
import 'package:gym/features/home/ui/home_screen.dart';
import 'package:gym/features/members/ui/screens/members_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registersScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.forgotpasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());

      case Routes.membersscreen:
        return MaterialPageRoute(builder: (_) => MembersScreen());

      case Routes.trainersScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
