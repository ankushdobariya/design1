import 'package:design1/nine.dart';
import 'package:design1/seven.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class eaight extends StatefulWidget {

  String name;
  String surname;
  String number;

  eaight(this.name, this.surname, this.number);

  @override
  State<eaight> createState() => _eaightState();
}

class _eaightState extends State<eaight> {

  List <String> text=["individual","Group"];
  int currentindex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return seventh(widget.name, widget.surname, widget.number);
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
                          "Home",
                          style: TextStyle(color: Colors.blue,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 50),
                  child: Text("Members",style: TextStyle(fontSize: 18),),
                ),
                Spacer(),
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return nine(widget.name,widget.surname,widget.number);
                  },));
                }, icon:Icon(Icons.add,size: 30,color: Colors.blue,),)
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: FlutterToggleTab(
                width: 94,
                height: 40,
                borderRadius: 7,
                selectedIndex: currentindex,
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
            ),currentindex == 0 ? Center(child: Text("hy"),):Center(child: Text("hello"),)
          ],
        ),
      ),
    );
  }
}
