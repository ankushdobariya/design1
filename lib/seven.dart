import 'package:design1/setting.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'eaight.dart';

class seventh extends StatefulWidget {
  String name;
  String surname;
  String number;

  seventh(this.name, this.surname, this.number);

  @override
  State<seventh> createState() => _seventhState();
}

class _seventhState extends State<seventh> {

  static final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(21.2144,72.8402),
    zoom: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.notifications,color: Colors.black,),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return setting(widget.name,widget.surname,widget.number);
              },));
            }, icon: Icon(Icons.settings),color: Colors.black)
          ],
          title: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:140,top: 20),
                child: Text("${widget.name}${widget.surname}", style: TextStyle(color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 132,),
                child: Row(
                  children: [
                    Icon(Icons.my_location,color: Colors.black,size: 15,),
                    Padding(
                      padding: const EdgeInsets.only(top:7,left: 3),
                      child: Icon(Icons.maximize,color: Colors.black,size: 10,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
        body: GoogleMap(initialCameraPosition: kGooglePlex,
        zoomControlsEnabled: false,),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return eaight(widget.name,widget.surname,widget.number);
          },));
        },
        child: Container(
            width: 360,
            height: 50,
            margin: EdgeInsets.only(bottom:15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff085CD0),
            ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.people,color:Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("Member",style: TextStyle(color: Colors.white,fontSize: 20),),
                )
              ],
            ),
        ),
      ),

    );
  }
}
