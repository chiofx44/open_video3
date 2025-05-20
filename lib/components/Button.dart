import 'package:flutter/material.dart';
import 'package:open_video/responsiveness/phone/JoinMeetingPhone.dart';

import '../responsiveness/web/JoinMeetingWeb.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.ButtonTitle});
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size.width;
    final isphone = ScreenSize < 600;

    return isphone ? GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => JoinMeetingPhone()));
      },

      child: Container(
          alignment: Alignment.center,
          width: 200,

          decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(13)
          ),

          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),

            child: Text(ButtonTitle, style: TextStyle(color: Colors.white, fontSize: 15,),),
          )),
    ) : GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => JoinMeetingWeb()));
      },

      child: Container(
          alignment: Alignment.center,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13)
          ),

          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),

            child: Text(ButtonTitle, style: TextStyle(color: Colors.brown, fontSize: 15,fontWeight: FontWeight.bold),),
          )),
    );
  }
}
