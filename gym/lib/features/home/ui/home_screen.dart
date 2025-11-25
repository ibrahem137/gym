import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_sidebar.dart';
import 'package:gym/features/check_in/ui/checkin_screen.dart';
import 'package:gym/features/dashboard/ui/dashboard_screem.dart';
import 'package:gym/features/members/ui/screens/members_screen.dart';
import 'package:gym/features/reports/ui/reporst_screen.dart';
import 'package:gym/features/settings/ui/screens/settings_screen.dart';
import 'package:gym/features/trainers/ui/screens/trainers_screen.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = SidebarXController(selectedIndex: 5, extended: true);
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManegar.backgroundcolor,
        elevation: 0,
        actions: [
          Icon(Icons.notifications_none_outlined, color: ColorsManegar.grey),
          SizedBox(width: 10),
          Icon(Icons.person_outline, color: ColorsManegar.grey),
          SizedBox(width: 10),
        ],
        title: Row(
          children: [
            Text('GymPro', style: TextStyles.font13mainOrange600),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 20),
                    labelText: 'Search',
                    floatingLabelStyle: TextStyles.font10Grey,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
