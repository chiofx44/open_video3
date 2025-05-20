import 'package:flutter/material.dart';

import '../responsiveness/phone/WelcomePhone.dart';
import '../responsiveness/web/WelcomeWeb.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    //check if is Phone
    final ismobile = MediaQuery.of(context).size.width < 600;

    //Redirecting the respective page
    return ismobile ? WelcomePhone() : WelcomeWeb();
  }
}
