import 'package:design1/main.dart';
import 'package:design1/premium.dart';
import 'package:design1/seven.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class setting extends StatefulWidget {

  String name;
  String surname;
  String number;

  setting(this.name, this.surname, this.number);


  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("Setting",style: TextStyle(color: Colors.black),),
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return seventh(widget.name,widget.surname,widget.number);
            },));
          },
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.blue,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.blue,fontSize: 18),
                )
              ],
            ),
          ),
        ),
        leadingWidth: 100,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            height:70,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              leading: Icon(Icons.account_circle_sharp,color: Colors.grey,size: 40,),
              title: Text("Name:${widget.name}${widget.surname}",style: TextStyle(color: Colors.black),),
              subtitle: Text("+91 ${widget.number}",style: TextStyle(color: Colors.black),),
            ),
          ),
          InkWell(
            onTap: () {
              Share.share('check out my website https://example.com');
            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 1,top: 40),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
                child: ListTile(
                  leading: Icon(Icons.star_border,color: Colors.black,),
                  title:Text("Rate us",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {
              Share.share('check out my website https://example.com');
            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 1),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                  
                ),
                child: ListTile(
                  leading: Icon(Icons.share,color: Colors.black,),
                  title:Text("Share App",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 40),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),

                ),
                child: ListTile(
                  leading: Icon(Icons.help_outline_outlined,color: Colors.black,),
                  title:Text("Help",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return premium(widget.name,widget.surname,widget.number);
              },));
            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 1),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                child: ListTile(
                  leading: Icon(Icons.workspace_premium,color: Colors.black,),
                  title:Text("Premium",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {
              Share.share('}check out my website https://example.com');
            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 40),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                ),
                child: ListTile(
                  leading: Icon(Icons.restore_rounded,color: Colors.black,),
                  title:Text("Restore Purchase",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {
              Share.share('check out my website https://example.com');
            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 1),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
                child: ListTile(
                  leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                  title:Text("Privacy Policy",style: TextStyle(color: Colors.black),),
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(alignment:Alignment.center,
                margin: EdgeInsets.only(left: 10,right:10,bottom: 1),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: ListTile(
                  leading: Icon(Icons.calendar_month_outlined,color: Colors.black,),
                  title:Text("Terms of use",style: TextStyle( color: Colors.black),),
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return design1();
              },));
            },
            child: Container(alignment:Alignment.center,
              margin: EdgeInsets.only(left: 10,right:10,bottom:20),
              height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),

                ),
                child: ListTile(
                  leading: Icon(Icons.no_accounts_outlined,color: Colors.black,),
                  title:Text("Delete Account",style: TextStyle(color: Colors.black),) ,
                  trailing: Icon(Icons.navigate_next),
                )
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade200
    );
  }
}
