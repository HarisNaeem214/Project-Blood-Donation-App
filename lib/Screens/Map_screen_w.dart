import 'package:flutter/material.dart';

class bloodgroupbox extends StatelessWidget {

  final Color? boxcolor;
  final String BloodGroup;
  const bloodgroupbox({super.key, this.boxcolor, required this.BloodGroup});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),

     border: Border.all(
          color: Colors.red, // Border color
          width: 2.0,),
    color:boxcolor ?? Colors.white ),
      height: 30 ,
      width: 40,
    
      child: Center(child: Text(BloodGroup)),
      
    );
  }
}