import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/routing/app_router.dart';
import 'package:gym/core/routing/routes.dart';
import 'package:gym/core/theme/colors.dart';

class GymApp extends StatelessWidget {
  final AppRouter appRouter;
  const GymApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      child: MaterialApp(
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: Routes.membersscreen,
        debugShowCheckedModeBanner: false,
        title: 'Gym App',
        theme: ThemeData(primaryColor: ColorsManegar.mainOrange),
      ),
    );
  }
}
