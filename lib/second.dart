import 'package:design1/data.dart';
import 'package:design1/sixth.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  PageController? controller;
  var currentposition=0;
  


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=PageController(
      initialPage: 0
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(bottom: 20,top: 100),
              height: 450,
              // color: Colors.pink,
              child: Container(
                 margin: EdgeInsets.only(left: 25,right: 25),
                child: PageView.builder(
                  controller: controller,
                  itemCount: data.imagelist.length,
                  itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image(image: AssetImage("${data.imagelist[index]}")),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Text("${data.titellist[index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("${data.subtitellist[index]} "),
                      ),
                      Text("${data.ttitellist[index]}"),
                    ],
                  );
                },
                onPageChanged: (value) {
                    currentposition = value;
                 setState(() {
                 });
                },
                ),

              ),
            ),
            Container(

              height: 100,
              //margin: EdgeInsets.only(top: 3),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(4, (index) {
                    return Container(
                      margin: EdgeInsets.all(3),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: currentposition == index ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    );
                  }),
                ],
              ),
            ),


            InkWell(
              onTap: () {
                if(currentposition == 3)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return sixth();
                    },));
                  }
                else
                  {
                    setState(() {
                        controller?.nextPage(duration: Duration(seconds:1), curve: Curves.ease);
                      });
                  }
              },
              child: currentposition == 3 ?  Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10,left:30,right:30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Registration",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ) : Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10,left:30,right:30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              )
            )
          ],
        ),

      ),
    );
  }
}
