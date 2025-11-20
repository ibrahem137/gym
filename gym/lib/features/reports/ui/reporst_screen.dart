import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class ReporstScreen extends StatelessWidget {
  const ReporstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,

      body: Center(child: Text('reports screen')),
    );
  }
}
