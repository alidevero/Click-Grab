import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:non_contact_delivery/lists/bottom_nav_bar_list.dart';
import 'package:non_contact_delivery/provider/provider_for_bottm_nav_bar.dart';
import 'package:non_contact_delivery/provider/provider_for_color_change_splash_screen.dart';
import 'package:non_contact_delivery/screens/cart_list_screen.dart';
import 'package:non_contact_delivery/screens/categories.dart';
import 'package:non_contact_delivery/screens/categories_product_list.dart';
import 'package:non_contact_delivery/screens/home_screen.dart';
import 'package:non_contact_delivery/screens/landing_screen.dart';
import 'package:non_contact_delivery/screens/product_detail_screen.dart';
import 'package:non_contact_delivery/screens/profile_screen.dart';
import 'package:non_contact_delivery/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ColorChanger()),
      ChangeNotifierProvider(create: (_)=> BottomNavBarSetter()),
    ],
    child:MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Non-Contact Delivery',
      theme: ThemeData(


        useMaterial3: true,
      ),
      home:  const SplashScreen(),
    ) ,
    );

  }
}

