import 'package:flutter/material.dart';
import 'package:open_video/components/text_field.dart';

import '../../VideoConferencingPages /call_page.dart';

class JoinMeetingPhone extends StatelessWidget {
  JoinMeetingPhone({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Join Meeting", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Enter Call ID",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Center(child: TextFieldC(callIdController: _controller)),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(callID: _controller.text,)));
            })
          ],
        ),
      ),
    );
  }
}
