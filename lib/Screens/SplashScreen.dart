import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';
import 'package:flutter_project_blood_dunation/Screens/Home_view.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {



  @override

void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 1), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Home_View() ));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: primaryColor,
          child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    logoandname(logoHeight: 209,logoWidth:279 ,fontSize: 40 ,),
                  ],
                ),
            // child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset("assets/images/logo.png",
            //     height:209,
            //     width: 279,),
            //     Text("ZINDAGI",
            //     style: TextStyle(fontFamily: "Quando",
            //       fontSize: 40,color: Colors.white),
            //     )
            //   ],
            ),
          ),
        ),
      
      );
    
  }
}