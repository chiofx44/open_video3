import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key, required this.appbarTitle});
  final String appbarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown,
      title: Text(appbarTitle, style: TextStyle( color: Colors.white),),
    );
  }
}
