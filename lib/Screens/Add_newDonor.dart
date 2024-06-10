import 'package:flutter/material.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';
import 'package:flutter_project_blood_dunation/Screens/Map_screen_w.dart';

class add_new_donor extends StatefulWidget {
  const add_new_donor({super.key});

  @override
  State<add_new_donor> createState() => _all_new_donorState();
}

class _all_new_donorState extends State<add_new_donor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: primaryColor,
      elevation: 0.0,
        title: Text("EDIT DONOR DETAIL",style: TextStyle(fontSize: 10),),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(25),
          child: Column(children: [
            TextField(decoration: InputDecoration(hintText: "Donor Name")),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "City")),
             SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Phone")),
             SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Date of birth")),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Blood Group"),
            bloodgroupbox(BloodGroup: "O+",boxcolor: Colors.red,)],),
            SizedBox(height: 10,),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.amber,),
            
              height: 110,
              width: double.infinity,
              child: Center(child: Text("Map")),
            ),
            SizedBox(height: 10,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(8)
                ,color: Colors.red,border: Border.all(color: Colors.red,width: 2)),
                  height: 50,
              width: 150,
              
              child: GestureDetector(
                onTap: (){},
                child: Center(child: Text("CALL",style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),)),
              ),),
              Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(8)
                ,color: Colors.white,border: Border.all(color: Colors.red,width: 2)),
                  height: 50,
              width: 150,
              
              child: Center(child: GestureDetector(

                  onTap: (){},

                child: Text("EDIT",style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold),
                ),
              ),
              
              ),)



            ],)






          ],),
        ),
    );
  }
}