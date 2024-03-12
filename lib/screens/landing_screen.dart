import 'package:flutter/material.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/colors_variables/variables.dart';
import 'package:non_contact_delivery/lists/bottom_nav_bar_list.dart';
import 'package:non_contact_delivery/provider/provider_for_color_change_splash_screen.dart';
import 'package:non_contact_delivery/resable_widgets/larger_reusable_button.dart';
import 'package:non_contact_delivery/screens/categories.dart';
import 'package:non_contact_delivery/screens/home_screen.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/splash_screen.png",
              fit: BoxFit.cover,
            ),
          ),
           Positioned(
            top: 110,
            left: 10,
            child: Image.asset("assets/images/non-contact-delivery-logo 1.png")
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: mainAppColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      radius: 44,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/icons/Box.png",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      clickAnGrab,
                      softWrap: true,
                      maxLines: 2,
                      style:const  TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      splashScreenText,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 3,
                      style:  const TextStyle(
                        color: Colors.grey,

                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Consumer<ColorChanger>(
                      builder: (context, provider, child) {
                        return LargerReusableButton(largerButtonColor:Colors.green,
                            buttonTextColor: whiteColor,
                            largerButtonText: login,
                            onPressFunction: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBarList()));
                            }

                            );
                      },
                    ),
                  ),
                  const SizedBox(height: 20,),
                  LargerReusableButton(largerButtonColor: whiteColor,
                      largerButtonText: signup,
                      buttonTextColor: Colors.grey,
                      onPressFunction: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBarList()));
                      },

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
