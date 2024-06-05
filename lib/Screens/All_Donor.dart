import 'package:flutter/material.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';
import 'package:flutter_project_blood_dunation/Screens/Map_screen_w.dart';
import 'package:flutter_project_blood_dunation/Screens/user_data.dart';

class all_donors_view
 extends StatelessWidget {
  const all_donors_view
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" All DONORS",style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 10),),
      backgroundColor: primaryColor,
      elevation: 0.0,),
      body: Container(height: double.infinity,width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(10) ,
            margin: EdgeInsets.only(bottom: 10),
            
            // height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(
          color: Colors.red, // Border color
          width: 2.0,)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(userData[index]["name"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                bloodgroupbox(BloodGroup: "O+",boxcolor: Colors.red,)
              ],
            ),
            Text(userData[index]["city"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
            Text(userData[index]["phone"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
            Text(userData[index]["Date"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
          ]),
          );


      }),),
    );
  }
}