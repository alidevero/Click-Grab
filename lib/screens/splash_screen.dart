import 'dart:async';

import 'package:flutter/material.dart';
import 'package:non_contact_delivery/screens/home_screen.dart';
import 'package:non_contact_delivery/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LandingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: [


          Column(
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset("assets/images/final_splesh_screen_image.png",
                  fit: BoxFit.fitHeight,
                ),

              ),
            ],
          ),
          Center(
            child: Image.asset("assets/images/non-contact-delivery-logo 1.png",
              height:MediaQuery.of(context).size.height/1,
              width:MediaQuery.of(context).size.width/1,


            ),
          ),

        ],
      ),
    );
  }
}
