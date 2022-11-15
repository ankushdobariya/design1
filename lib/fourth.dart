import 'package:design1/fifth.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class fourth extends StatefulWidget {

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 10,right: 10,bottom: 70,top: 100),
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/a4.png")
                  )
              ),
            ),
            Text("Invite to App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text("This app is not installed on the phone",style: TextStyle(fontSize: 18),),
            ),
            Text("number you're trying to trace.unvitee your",style: TextStyle(fontSize: 18)),
            Text("family and friends to download this app in",style: TextStyle(fontSize: 18)),
            Text("order to locate them.",style: TextStyle(fontSize: 18)),
            InkWell(
              onTap: () {
                Share.share('check out my website https://example.com');
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 70,left:30,right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Send Invitation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
