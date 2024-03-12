import 'package:flutter/material.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/colors_variables/variables.dart';
import 'package:non_contact_delivery/lists/vegitables_iagme_name_list.dart';
import 'package:non_contact_delivery/resable_widgets/resable_expansion_tile.dart';
import 'package:non_contact_delivery/resable_widgets/small_reuseable_botton.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: mainAppColor,
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: mainAppColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 15.0,bottom: 25),
                child: Text(
                  profile,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: boldTextColor),
                ),
              ),
              ListTile(
               horizontalTitleGap: 5,
                leading: CircleAvatar(
                  backgroundColor: cicleAvatarColor,
                  radius: 30,
                  child: const Icon(Icons.person_outline),
                ),
                title: Text(userName, style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                ),
                subtitle: Row(children: [Text(userIdText,style: TextStyle(
                  color: secondryTextColorForAvatar,
                  fontWeight: FontWeight.w100,
                  fontSize: 13
                ),), Text("$userIdInt",
                style: TextStyle(
                  color: secondryTextColorForAvatar,
                    fontWeight: FontWeight.w100,
                    fontSize: 13
                ),

                )],),
                trailing: const SmallReusableButton(buttonColor: Colors.white,
                    buttonIcon: Icons.logout,
                    iconColor: Colors.black),
              ),


            ReusableExpansionTile(expansionTileTitle: pendingOrders,
                expansionTileChildText: pendingOrderExpansion),

              ReusableExpansionTile(expansionTileTitle: address,
                  expansionTileChildText: addressOfUser),
              ReusableExpansionTile(expansionTileTitle: paymentMethod,
                  expansionTileChildText: paymentMethodExpansion),
              ReusableExpansionTile(expansionTileTitle: trackYourOrders,
                  expansionTileChildText: trackYourOrderExpansion),
              ReusableExpansionTile(expansionTileTitle: aboutUs,
                  expansionTileChildText: aboutUsExpansion)
            ],
          ),
          
        ),
      ),

    );
  }
}
