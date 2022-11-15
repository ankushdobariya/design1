import 'dart:io';
import 'package:design1/fourth.dart';
import 'package:design1/nine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ten extends StatefulWidget {

  String name;
  String surname;
  String number;
  String groupn;

  ten(this.name,this.surname,this.number,this.groupn);

  @override
  State<ten> createState() => _tenState();
}class _tenState extends State<ten> {

  String? gender;

  TextEditingController t1 = TextEditingController();

  String display="";
  int currentindex=0;
  String entername="";
  List <String> text=["Keypad","Contacts"];

  List<Contact>? contacts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getphonedata();
  }

  void getphonedata() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      setState(() {

      });
    }
  }

  openwhatsapp() async{
    var whatsapp ="+91$display";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
    var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if(Platform.isAndroid){
      // for iOS phone only
      if( await canLaunch(whatappURL_ios)){
        await launch(whatappURL_ios,forceSafariVC: false);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));

      }

    }else{
      // android,web
      if( await canLaunch(whatsappURl_android)){
        await launch(whatsappURl_android);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));

      }
    }
  }



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:
      SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return nine(widget.name, widget.surname, widget.number);
                    },));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left:5,top: 10,right: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.blue,
                        ),
                        Text(
                          "Add Member",
                          style: TextStyle(color: Colors.blue,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15),
                  child:
                  widget.groupn.isNotEmpty ?Text("${widget.groupn}",style: TextStyle(fontSize: 18),):Text("Members",style: TextStyle(fontSize: 18),)
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: FlutterToggleTab(
                width: 92,
                height: 40,
                borderRadius: 7,
                selectedIndex: currentindex,
                unSelectedBackgroundColors: [Colors.grey.shade300],
                selectedBackgroundColors: [Colors.white],
                selectedTextStyle: TextStyle(
                  color: Colors.black,
                  // fontSize: 14,
                  // fontWeight: FontWeight.w600
                ),
                unSelectedTextStyle: TextStyle(
                  color: Colors.black,
                  // fontSize: 14,
                  // fontWeight: FontWeight.w400
                ),
                labels: text,
                // icons: _listIconTabToggle,
                selectedLabelIndex: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                marginSelected:
                EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              ),
            ),
            currentindex == 0 ? Container(
              height: 640,
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,bottom: 15,top: 25),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        CountryCodePicker(
                          initialSelection: "+91",
                          textStyle: TextStyle(fontSize: 35,color: Colors.black),
                          showFlag: false,
                          showFlagDialog: true,
                          // showFlag: false,
                        ),
                        Text("${display}",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                      ],
                    )),
                  InkWell(
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child:entername.isNotEmpty ? Text(entername):Text("Enter Name",
                            style: TextStyle(fontSize: 18, color: Colors.blue))
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: AlertDialog(
                              title: Text(
                                'Enter Name',
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              content: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none, hintText: "Enter Name"),
                                controller: t1,
                                onChanged: (value) {
                                  setState(() {
                                    entername = value;
                                  });
                                },
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancle")),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        print("${entername}");
                                        entername = t1.text;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Add"))
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Container(
                    // margin: EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            dialPadButton(size, '1'),
                            dialPadButton(size, '2'),
                            dialPadButton(size, '3'),
                          ],
                        ),
                        Row(
                          children: [
                            dialPadButton(size, '4'),
                            dialPadButton(size, '5'),
                            dialPadButton(size, '6')
                          ],
                        ),
                        Row(
                          children: [
                            dialPadButton(size, '7'),
                            dialPadButton(size, '8'),
                            dialPadButton(size, '9')
                          ],
                        ),
                        Row(
                          children: [
                            dialPadButton(size, ""),

                            dialPadButton(size, '0'),
                            InkWell(
                              child: Container(
                                height: size.height * 0.15,
                                width: size.width * 0.33,

                                child: Center(
                                  child: Icon(
                                      Icons.backspace,
                                      size: 35,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              onTap:() {
                                if (display.length != 0) {
                                  setState(() {
                                    display = display.substring(0, display.length - 1);
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                        display.isEmpty ? Container(
                          height: 50,
                          width: 360,
                          decoration: BoxDecoration(
                              color:Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8)
                          ),alignment: Alignment.center,
                          child: Text("Send Invitation",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ): InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return fourth();
                            },));
                          },
                          child: Container(
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration(
                                color: Color(0xff085CD0),
                                borderRadius: BorderRadius.circular(8)
                            ),alignment: Alignment.center,
                            child: Text("Send Invitation",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                        )
                      ],
                    ),
                  ),],
              ),
            ):Container(
              height:650,
              width:500,
              child: (contacts == null)
                  ? Center(
                child: CircularProgressIndicator(),
              )
                  : ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (BuildContext context,int index) {
                  return ListTile(
                    title: Text(contacts![index].name.first),
                    leading: Radio(
                        value: "radio value",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender!=value.toString();
                          });
                        }
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: display.isEmpty ? Container(
      //   height: 50,
      //   width: 360,
      //   decoration: BoxDecoration(
      //       color: Colors.grey.shade300,
      //       borderRadius: BorderRadius.circular(8)
      //   ),alignment: Alignment.center,
      //   child: Text("Send Invitation",style: TextStyle(color: Colors.white,fontSize: 20),),
      // ): InkWell(
      //   onTap: () {
      //    Navigator.push(context, MaterialPageRoute(builder: (context) {
      //      return fourth();
      //    },));
      //   },
      //   child: Container(
      //     height: 50,
      //     width: 360,
      //     decoration: BoxDecoration(
      //         color: Color(0xff085CD0),
      //         borderRadius: BorderRadius.circular(8)
      //     ),alignment: Alignment.center,
      //     child: Text("Send Invitation",style: TextStyle(color: Colors.white,fontSize: 20),),
      //   ),
      // )
    );
  }

Widget dialPadButton(Size size, String value, {Color, color}) {
  return InkWell(
    highlightColor: Colors.black45,
    onTap: () {
      setState(() {
        display = display + value;
      });
    },
    child: Container(
      height: size.height * 0.13,
      width: size.width * 0.33,
      child: Center(
        child: Text(
          value,
          textScaleFactor: 1.0,
          style: TextStyle(
              color: color ?? Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
}