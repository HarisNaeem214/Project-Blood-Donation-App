import 'package:flutter/material.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';
import 'package:flutter_project_blood_dunation/Screens/Add_newDonor.dart';
import 'package:flutter_project_blood_dunation/Screens/All_Donor.dart';
import 'package:flutter_project_blood_dunation/Screens/Map_screen_w.dart';

class map_view extends StatefulWidget {
  const map_view({super.key});

  @override
  State<map_view> createState() => _MapState();
}

class _MapState extends State<map_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryColor,
        title: Text("JOHAR TOWN, LAHORE",style: TextStyle(fontSize: 10),),
        actions: [IconButton(onPressed: (){},  icon:Icon(Icons.account_circle) ,)],
        elevation: 0.0,
      ) ,
      body: SafeArea(child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [Container(width: double.infinity,
        height: MediaQuery.of(context).size.height  * 0.6,
        color: Colors.amber,
        child: Text("Map Area"),),  // This is container for map 
        Expanded(child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [Align(alignment: Alignment.topLeft,
            child: Text("Blood Groups",style: TextStyle(fontWeight: FontWeight.bold),)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              bloodgroupbox(BloodGroup: "O+",boxcolor: Colors.red,),
              bloodgroupbox(BloodGroup: "B+",),
              bloodgroupbox(BloodGroup: "AB+",),
              bloodgroupbox(BloodGroup: "A+",),
              bloodgroupbox(BloodGroup: "A-",),
              bloodgroupbox(BloodGroup: "B-",),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                children: [
              bloodgroupbox(BloodGroup: "AB-",),
              SizedBox(width: MediaQuery.of(context).size.width * 0.07,),
              bloodgroupbox(BloodGroup: "O-",),
              SizedBox(width: MediaQuery.of(context).size.width * 0.07,),
              bloodgroupbox(BloodGroup: "ALL",),],),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(8)
                ,color: Colors.red,border: Border.all(color: Colors.red,width: 2)),
                  height: 50,
              width: 150,
              
              child: GestureDetector(
                onTap: (){

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const all_donors_view()),
  );

                },
                child: Center(child: Text("SHOW ALL",style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),)),
              ),),
              
              Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(8)
                ,color: Colors.white,border: Border.all(color: Colors.red,width: 2)),
                  height: 50,
              width: 150,
              
              child: Center(child: GestureDetector(

                  onTap: (){
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const add_new_donor()),
  );


                  },

                child: Text("ADD NEW DONOR",style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold),
                ),
              ),
              
              ),)
              ],),
              ],),
        ))    // this Container For Blood group Selection
        
        
        ],


        
        ),)),
      
    );
  }
}