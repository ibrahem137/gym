import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:sidebarx/sidebarx.dart';

class AppSidebar extends StatelessWidget {
  final SidebarXController controller;
  const AppSidebar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      // animationDuration: Duration(milliseconds: 300), leave it for future use
      showToggleButton: false,
      controller: controller,
      theme: SidebarXTheme(
        selectedItemTextPadding: EdgeInsets.only(left: 20),
        itemTextPadding: EdgeInsets.only(left: 20),
        selectedItemDecoration: BoxDecoration(
          color: ColorsManegar.mainOrange,
          borderRadius: BorderRadius.circular(15),
        ),
        selectedTextStyle: TextStyle(
          color: ColorsManegar.semewhite,
        ),
        selectedIconTheme: IconThemeData(
          color: ColorsManegar.semewhite,
        ),
        width: 250,
        decoration: BoxDecoration(
          color: ColorsManegar.backgroundcolor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      items: [
        SidebarXItem(
          icon: Icons.dashboard,
          label: "Dashboard",
        ),
        SidebarXItem(icon: Icons.people, label: "Members"),
        SidebarXItem(
          icon: Icons.check_circle,
          label: "Check-in",
        ),
        SidebarXItem(
          icon: Icons.fitness_center,
          label: "Trainers",
        ),
        SidebarXItem(
          icon: Icons.bar_chart,
          label: "Reports",
        ),
        SidebarXItem(
          icon: Icons.settings,
          label: "Settings",
        ),
      ],
      footerBuilder: (context, extended) {
        return Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: ColorsManegar.grey,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin User',
                        style: TextStyles.font13darkgrayw400
                            .copyWith(
                              color: ColorsManegar.black,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'admin@gmail.com',
                        style: TextStyles.font10Grey,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
