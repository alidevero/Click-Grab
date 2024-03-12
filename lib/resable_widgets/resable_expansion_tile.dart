import 'package:flutter/material.dart';

import '../colors_variables/colors.dart';
import '../colors_variables/variables.dart';
import '../lists/vegitables_iagme_name_list.dart';


class ReusableExpansionTile extends StatelessWidget {

  final String expansionTileTitle;
  final String expansionTileChildText;
  const ReusableExpansionTile({super.key,
  required this.expansionTileTitle,
    required this.expansionTileChildText

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 20.0,right: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 1,color: cicleAvatarColor)
        ),
        child: ExpansionTile(
          title: Text(expansionTileTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
            ListTile(title: Text(expansionTileChildText,
              style:TextStyle(fontWeight: FontWeight.w100,color: secondryTextColorForAvatar) ,),)
          ],

        ),
      ),
    );

  }
}
