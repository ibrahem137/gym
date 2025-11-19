import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/widgets/app_sidebar.dart';
import 'package:gym/features/checkin/ui/checkin_screen.dart';
import 'package:gym/features/dashboard/ui/dashboard_screem.dart';
import 'package:gym/features/members/ui/screens/members_screen.dart';
import 'package:gym/features/reports/ui/reporst_screen.dart';
import 'package:gym/features/settings/ui/settings_screen.dart';
import 'package:gym/features/trainers/ui/trainers_screen.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = SidebarXController(
    selectedIndex: 0,
    extended: true,
  );
  final List<Widget> screens = [
    DashboardScreem(),
    MembersScreen(),
    CheckinScreen(),
    TrainersScreen(),
    ReporstScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: Row(
        children: [
          AppSidebar(controller: _controller),
          VerticalDivider(),
          Expanded(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return screens[_controller.selectedIndex];
              },
            ),
          ),
        ],
      ),
    );
  }
}
