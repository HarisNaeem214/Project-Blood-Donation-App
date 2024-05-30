import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_blood_dunation/Global_widgets.dart';

class otp_view extends StatefulWidget {
  const otp_view({super.key});

  @override
  State<otp_view> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<otp_view> {
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
           
             Text("PHONE VERFICATION",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black ),),
             Align(alignment: Alignment.centerLeft,

 child: Center(
   child: Text("''Enter the OTP we have sent on your \nmobile number: +3064567873''",
    textAlign:  TextAlign.center           ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 8,),),
 )),

            

              SizedBox(height: MediaQuery.of(context).size.height * 0.07), // Size Box Space Between Heading and OTP 
              
             
        Container(padding: EdgeInsets.all(5),
          child: Row(children: [SizedBox(
          height: 68,
          width: 64,
          child: TextField(style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly],),
          ), SizedBox(width: 2,),
          SizedBox(
          height: 68,
          width: 64,
          child: TextField(style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly],),
          ),SizedBox(width: 2,),
          SizedBox(
          height: 68,
          width: 64,
          child: TextField(style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly],),
          ),SizedBox(width: 2,),
          SizedBox(
          height: 68,
          width: 64,
          child: TextField(style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly],),
          )
          ],),
        )


              ],),
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
          child: 
          InkWell( onTap: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const otp_view()),
  ); }
  ,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Color(0xFFEB3738)),
              child: Center(child: Text("VERIFY",style: TextStyle(fontWeight: FontWeight.bold,color: whiteColor),)),
              height: 48,
              width: 56,
              ),
          )),

         Positioned(bottom: 70,
         left: MediaQuery.of(context).size.width * 0.4 - 40,
      
          child: Text('Valid for 4 minutes(02:00)'))
      ])),
      );
  }
}
