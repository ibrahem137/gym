import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class ReporstScreen extends StatelessWidget {
  const ReporstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //في ويدجت جاهزة بالكور فيا text headers مشان ما يتكررو لانو كلن نفس التصميم استعملا   بوساتي الك
      backgroundColor: ColorsManegar.backgroundcolor,

      body: Center(child: Text('reports screen')),
    );
  }
}
