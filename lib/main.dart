
import 'package:design1/second.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: design1(),
  ));
}
class design1 extends StatefulWidget {
  const design1({Key? key}) : super(key: key);

  @override
  State<design1> createState() => _design1State();
}

class _design1State extends State<design1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("image/a6.png")
          )
        ),
        child: Column(
          children: [
            Spacer(flex: 3,),
            Container(margin: EdgeInsets.only(left: 50,right: 50,bottom: 50,top: 100),
             height: 100,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("image/a5.png")
               )
             ),
            ),
            Text("Track yous Friends & Family",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("We will help you to track your family"),
            ),
            Text("members and friends using phone number."),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return second();
                },));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 150,left:30,right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ),
            ),
            Spacer(flex: 1,)
          ],
        ),
      ),
    );
  }
}
