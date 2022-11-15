import 'dart:async';
import 'package:design1/seven.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';



class sixth extends StatefulWidget {

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {

  TextEditingController a1=TextEditingController();
  TextEditingController a2=TextEditingController();
  TextEditingController a3=TextEditingController();
  TextEditingController a4=TextEditingController();

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();


  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/a6.png"),
              fit: BoxFit.fill
            )
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 50,right: 50,bottom:30,top:0),
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/a5.png")
                  )
              ),
            ),
            Text("Registration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            Container(
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: a1,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixText: "",
                    hintText: " First name",hintStyle: TextStyle(color: Colors.grey)
                  ),),
                )),

            Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5,bottom: 5 ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: TextField(controller: a2,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Last name",hintStyle: TextStyle(color: Colors.grey)
                    ),),
                )),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 100,
                    margin: EdgeInsets.only(left: 20,right: 5,top:5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: CountryCodePicker(
                        initialSelection: "+91",
                      )
                    )),
                Container(
                  width: 240,
                    margin: EdgeInsets.only(left: 5,right: 20,top:5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(controller: a3,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Phone number",hintStyle: TextStyle(color: Colors.grey)
                        ),),
                    )),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top:10,left: 12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 52,top: 5),
                    child: Text("We respct your privacy and ensure that your phone",style: TextStyle(color: Colors.grey),),
                  ),
                  Text("remember will not be shared with anyone and only used for",style: TextStyle(color: Colors.grey),),
                  Padding(
                    padding: const EdgeInsets.only(right: 320),
                    child: Text("signup.",style: TextStyle(color: Colors.grey),),
                  ),
                ],
              ),
            ),


            a1.text.isNotEmpty ? RoundedLoadingButton(
              height: 60,
              width: 360,
              borderRadius: 10,
              color: Color(0xff085CD0),
              child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              controller: _btnController,
              onPressed: () {
                _doSomething();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return seventh(a1.text,a2.text,a3.text);
                    },));

              },
            ):
            InkWell(
              onTap: () {

                if(a1.text.isEmpty)
                  {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text("Please Enter Firstname"),
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text("OK"))
                        ],
                      );
                    },);
                  }
                else if(a2.text.isEmpty)
                {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text("Please Enter Lastname"),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("OK"))
                      ],
                    );
                  },);
                }
                else if(a3.text.isEmpty)
                {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text("Please Enter Phonenuber"),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("OK"))
                      ],
                    );
                  },);
                }
                else
                  {
                   setState(() {

                   });
                  }
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10,left:19,right:19),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff085CD0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              ),
            ),
            Container(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
