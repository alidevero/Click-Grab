import 'package:flutter/material.dart';
import 'package:non_contact_delivery/lists/bottom_nav_bar_list.dart';

import '../colors_variables/colors.dart';
import '../colors_variables/variables.dart';
import '../lists/vegitables_iagme_name_list.dart';
import '../resable_widgets/reusauble_list_of_items.dart';
import '../resable_widgets/small_reuseable_botton.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: mainAppColor,
          leading: IconButton(onPressed: (){
           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const BottomNavBarList()));
          }, icon:const Icon(Icons.arrow_back_ios)) //Icon(Icons.arrow_back_ios,),
      ),
      body: Container(
        color: mainAppColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15.0),
              child: Text(
                favorites,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: boldTextColor),
              ),
            ),
            Padding(
              // form here single child scroll view
              padding: const EdgeInsets.only(top: 35, left: 27, bottom: 40),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                width: MediaQuery.of(context).size.width / 1.15,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: search,
                        icon: const Icon(
                          Icons.search,
                          size: 27,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ReusableListOfItems(productImageList: vegetablesImages,
              productNameList: vegetablesNames,
              productPriceList: vegetablesPrices,
              productPriceMeasureList: vegetablesPricesMeasuerment,
              button1: SmallReusableButton(buttonColor: whiteColor,
                  buttonIcon: Icons.shopping_cart_outlined,
                  iconColor: Colors.grey),

            )
          ],
        ),
      ),

    );
  }
}
