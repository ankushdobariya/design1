import 'package:design1/setting.dart';
import 'package:flutter/material.dart';

class premium extends StatefulWidget {

  String name;
  String surname;
  String number;

  premium(this.name, this.surname, this.number);

  @override
  State<premium> createState() => _premiumState();
}

class _premiumState extends State<premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left:150,right: 60 ),
                    child: Text("Premium",style: TextStyle(fontSize: 23),),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return setting(widget.name, widget.surname,widget. number);
                    },));
                  }, child: Text("Cancel",style: TextStyle(fontSize: 23),))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50,bottom: 30),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/a5.png")
                  )
                ),
              ),
              Text("Go Premium",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 100,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 60,
                      width: 60,

                      decoration: BoxDecoration(
                          color: Colors.orange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:Image.asset("image/a7.png",color: Colors.white,),
                    ),
                    Container(
                      // color: Colors.purple,
                      width: 190,
                      child: ListTile(
                        title: Text("Rs.469.00",style: TextStyle(fontSize: 20),),
                        subtitle: Text("Monthly Subscription"),

                      ),
                    ),
                    Container(

                      alignment: Alignment.center,
                      height: 35,
                      width: 80,

                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(3)
                      ),
                      child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 100,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 60,
                      width: 60,

                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child:Image.asset("image/a7.png",color: Colors.white,),
                    ),
                    Container(
                      // color: Colors.purple,
                      width: 190,
                      child: ListTile(
                        title: Text("Rs.2,849.00",style: TextStyle(fontSize: 20),),
                        subtitle: Text("Yearly Subscription")
                      ),
                    ),
                    Container(

                      alignment: Alignment.center,
                      height: 35,
                      width: 80,

                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(3)
                      ),
                      child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              Container(
                width: 500,
                // color: Colors.purple,
                margin: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("Privacy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Text("Restor purchase",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Terms",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,right: 12),
                  child: Text("The subscription will automatically renew unless turned off in your iTunes account Settings at least 24 hour before the current periods ends.you can go to your iTunes Account setting to manage your subscription and turn off auto renew. Your iTunes Account will be charged when the purchase is confirmed",style: TextStyle(color: Colors.grey.shade600),)),



            ],
          ),
        ),

      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
