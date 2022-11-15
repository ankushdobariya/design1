import 'package:design1/sixth.dart';
import 'package:flutter/material.dart';

class fifth extends StatefulWidget {
  const fifth({Key? key}) : super(key: key);

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 50,right: 50,bottom: 50,top: 100),
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/a2.png")
                  )
              ),
            ),
            Text("Real Time Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("View realtime location to coordinate with friends"),
            ),
            Text("and family members."),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return sixth();
                },));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 130,left:30,right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
