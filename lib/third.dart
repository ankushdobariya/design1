import 'package:design1/fourth.dart';
import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
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
                      image: AssetImage("image/a3.png")
                  )
              ),
            ),
            Text("Create Group Circle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Create a group for your family or friends so that"),
            ),
            Text("you can simply stay in touch with them."),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return fourth();
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
                child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
