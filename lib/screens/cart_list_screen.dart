import 'package:flutter/material.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/colors_variables/variables.dart';
import 'package:non_contact_delivery/lists/vegitables_iagme_name_list.dart';
import 'package:non_contact_delivery/resable_widgets/larger_reusable_button.dart';
import 'package:non_contact_delivery/resable_widgets/reusauble_list_of_items.dart';
import 'package:non_contact_delivery/resable_widgets/small_reuseable_botton.dart';
import 'package:non_contact_delivery/screens/categories.dart';
import 'package:non_contact_delivery/screens/home_screen.dart';
import 'package:non_contact_delivery/screens/profile_screen.dart';


class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: mainAppColor,
        title: Text(readyToFinalize,

        style:const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal
        ),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        }, icon:const Icon(Icons.arrow_back_ios))
      ),
      body: Container(
        color: mainAppColor,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            ReusableListOfItems(productImageList: vegetablesImages,
                productNameList: vegetablesNames,
                productPriceList: vegetablesPrices,
                productPriceMeasureList: vegetablesPricesMeasuerment,
                button1: SmallReusableButton(buttonColor:whiteColor,
                    buttonIcon: Icons.add,
                    iconColor: Colors.grey), button2:SmallReusableButton(buttonColor:whiteColor,
            buttonIcon: Icons.check,
            iconColor: Colors.grey),
            ),
            Padding(padding:const EdgeInsets.only(top: 20),
            child: LargerReusableButton(largerButtonColor: Colors.green,
                buttonTextColor: whiteColor,
                largerButtonText: proceedToPar, onPressFunction:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen())
              );
                },
              ),
            ),
          ],
        ),
      ),
      );


  }
}
