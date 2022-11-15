import 'package:design1/eaight.dart';
import 'package:design1/ten.dart';
import 'package:flutter/material.dart';

class nine extends StatefulWidget {

  String name;
  String surname;
  String number;

  nine(this.name,this.surname,this.number);

  @override
  State<nine> createState() => _nineState();
}

class _nineState extends State<nine> {

  TextEditingController a4 =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return eaight(widget.name, widget.surname, widget.number);
                    },));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10,right: 30,left: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.blue,
                        ),
                        Text(
                          " Member",
                          style: TextStyle(color: Colors.blue,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,left:30),
                  child: Text("Add Members",style: TextStyle(fontSize: 18),),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only( left: 20, right: 20),
              child: InkWell(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff007aff),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 10),
                        child: Icon(Icons.person, color: Colors.white, size: 30),
                      ),
                      Text(
                        "Add individual",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ten(widget.name,widget.surname,widget.number,"");
                  },));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20,bottom: 20),
              child: InkWell(
                child: Container(

                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff007aff),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120, right: 10),
                        child: Icon(Icons.group, color: Colors.white, size: 30),
                      ),
                      Text("Add Group",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Container(
                        alignment: Alignment.center,
                          child: Column(
                          children: [
                            Text("Add a group"),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text("Enter the group name.",style: TextStyle(fontSize: 15),),
                            ),
                            Container(
                                width: 280,
                                height: 40,
                                margin: EdgeInsets.only(top:5),
                                decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.grey
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: TextField(controller: a4,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter here",hintStyle: TextStyle(color: Colors.grey)
                                    ),),
                                )),

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap:() {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      // margin: EdgeInsets.only(top: 20),
                                      child: Text("Cancel",style: TextStyle(color: Colors.blue),),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(a4.text.isEmpty)
                                        {
                                          print("enter name");
                                        }
                                        else
                                        {
                                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
                                            return ten(widget.name, widget.surname,widget.number,a4.text);
                                          },));
                                        }
                                      });
                                    },
                                    child: Container(
                                      // margin: EdgeInsets.only(top: 20),
                                      child: Text("Create",style: TextStyle(color: Colors.blue),),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      )

                    );
                  },);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
