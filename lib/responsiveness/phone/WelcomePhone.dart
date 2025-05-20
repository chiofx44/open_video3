import 'package:flutter/material.dart';
import 'package:open_video/components/Button.dart';

class WelcomePhone extends StatefulWidget {
  const WelcomePhone({super.key});

  @override
  State<WelcomePhone> createState() => _WelcomePhoneState();
}

class _WelcomePhoneState extends State<WelcomePhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Align(
            alignment: Alignment.center,
          ),
Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Open", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Talk", style: TextStyle(color: Colors.brown, fontSize: 20, fontStyle: FontStyle.italic),),
            ],
          ),
          // Text


          //image
          Image.asset("assets/images/video_conferencing2.png"),

          //Text
          Text("Talk to Stranger make Connection Anonmously...", style: TextStyle( fontSize: 18), textAlign: TextAlign.center,),
          Spacer(),
          //Button
          Button(ButtonTitle: "Continue.."),
          Spacer(),

        ],
      ),
    );
  }
}
