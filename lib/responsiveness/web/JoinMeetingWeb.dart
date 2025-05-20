import 'package:flutter/material.dart';
import 'package:open_video/VideoConferencingPages%20/call_page.dart';

import '../../components/text_field.dart';

class JoinMeetingWeb extends StatelessWidget {
JoinMeetingWeb({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Join Meeting", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(

          children: [
            TextFieldC(callIdController: _controller,),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(callID: _controller.text,)));
            })

          ],
        ),
      ),

    );
  }
}
