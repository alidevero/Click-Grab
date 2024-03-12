import 'package:flutter/material.dart';
import 'package:non_contact_delivery/lists/screens_list.dart';
import 'package:non_contact_delivery/provider/provider_for_bottm_nav_bar.dart';
import 'package:provider/provider.dart';


import '../lists/bottom_nav_bar_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {



     //final bottomNavBarSetterobj = Provider.of<BottomNavBarSetter>(context);

    return Scaffold(

      //body: screensList[bottomNavBarSetterobj.bottomNavBarIndex] ,

        bottomNavigationBar: const BottomNavBarList(),

    );
  }
}
