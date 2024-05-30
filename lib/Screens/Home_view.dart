import 'package:flutter/material.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';
import 'package:flutter_project_blood_dunation/Screens/Phone_number.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:primaryColor ,
      elevation: 0.0,),
      body: Container(height: double.infinity,  //this Container for contain full body area
      width: double.infinity,
      child: Stack(
        children: [ Column(children: [                     
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
          color: primaryColor,
        child: logoandname(
                      logoHeight: 100, // Adjust the size as needed
                      logoWidth: 150,  // Adjust the size as needed
                      fontSize: 20,    // Adjust the size as needed
                    ),
          ),
          Expanded(child: Container())
          
        ]),
        Align(
          alignment: Alignment.center,
          child:
     Container(
        child:  Container(width: double.infinity, padding: EdgeInsets.only(left: 20,right: 20),
         child: Column(
             children: [SizedBox(height: MediaQuery.of(context).size.height * 0.02),
           
             Text("Login",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black ),),
             Align(alignment: Alignment.centerLeft,

              child: Text("Phone",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),

              TextField(decoration: InputDecoration(hintText: "TYPE YOUR PHONE"),),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              
             Align(alignment: Alignment.centerLeft,
              child: Text("PASSWORD",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              TextField(decoration: InputDecoration(hintText: "TYPE YOUR PASSWORD"),)],),
       ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: whiteColor,
           boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 5, // Spread radius
                        blurRadius: 10, // Blur radius
                        offset: Offset(0, 5),),
           ]),
           
            width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.45,),
        ),
        Positioned(
          left: 40,
        right: 40,
        bottom: 100,
        top: 350,
          child: InkWell( onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const phone_numberview()),
  );           

          },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Color(0xFFEB3738)),
              child: Center(child: Text("SIGN IN",style: TextStyle(fontWeight: FontWeight.bold,color: whiteColor),)),
              height: 48,
              width: 56,
              ),
          ))
      ])),
      );
  }
}
