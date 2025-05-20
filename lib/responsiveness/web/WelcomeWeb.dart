import 'package:flutter/material.dart';
import 'package:open_video/components/Button.dart';
import 'package:open_video/responsiveness/web/JoinMeetingWeb.dart';

class WelcomeWeb extends StatefulWidget {
  const WelcomeWeb({super.key});

  @override
  State<WelcomeWeb> createState() => _WelcomeWebState();
}

class _WelcomeWebState extends State<WelcomeWeb> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            //Top Bar 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Open", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Talk", style: TextStyle(color: Colors.brown, fontSize: 20, fontStyle: FontStyle.italic),),
                  ],
                ),
                Button(ButtonTitle: "Join Us...")
              ],
            ),
            
            //body 
            Padding(padding: EdgeInsets.only(top: 40),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Container(
                  width: (Size/2) * 0.8,
                  child: Text("For a real-time experience or to see your loved ones live, video cam chat is absolutely the best option ever. And especially for a long-distance relationship, choosing video chat is always a worthwhile decision. TWS video cam chat offers high-quality video and audio without any interruption or distortion. Well, even the most popular online chat sites still don’t provide that much quality that you can experience at the Talkwithstranger app.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13
                    ),
                  ),
                ),
                Image.asset("assets/images/video_conference.png")
              ],
            ),),

            //Continue Button
            SizedBox(height: 10,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("Wanna Try?", style: TextStyle(fontSize: 15),),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JoinMeetingWeb()));
                  },

                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(35)
                    ),
                    child: Text(" Go.", style: TextStyle(color: Colors.white, fontSize: 18, ),),
                  ),
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
