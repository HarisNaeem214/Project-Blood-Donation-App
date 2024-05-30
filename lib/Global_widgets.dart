import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFD91106);

const Color whiteColor = Colors.white;

class logoandname extends StatelessWidget {
    final double logoHeight;
  final double logoWidth;
  final double fontSize;
  const logoandname({super.key, required this.logoHeight, required this.logoWidth, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Image.asset("assets/images/logo.png",
                height: logoHeight ,
                // 209,
                width: logoWidth 
                // 279
                ),
                Text("ZINDAGI",
                style: TextStyle(fontFamily: "Quando",
                  fontSize:fontSize, 
                  // 40
                  color: Colors.white),
                )
              ],
            );
  }
}