import 'package:flutter/material.dart';

import '../lists/product_description_list.dart';
import '../lists/vegitables_iagme_name_list.dart';
import '../screens/product_detail_screen.dart';


class ReusableListOfItems extends StatefulWidget {

  final List<String> productImageList;
  final List<String> productNameList;
  final List<String> productPriceList;
  final List<String> productPriceMeasureList;
  final Widget button1;
  final Widget? button2;

  const ReusableListOfItems({super.key, required this.productImageList,

    required this.productNameList,
    required this.productPriceList,
  required this.productPriceMeasureList,
    required this.button1,
      this.button2,
  });

  @override
  State<ReusableListOfItems> createState() => _ReusableListOfItemsState();
}

class _ReusableListOfItemsState extends State<ReusableListOfItems> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.productImageList.length,
          itemBuilder: (BuildContext, int index) {
            return     GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      ProductDetailScreen(

                          imageOfProduct: vegetablesImages[index],
                          nameOfProduct: vegetablesNames[index],
                          priceOfProduct: vegetablesPrices[index],
                          priceMeasurement: vegetablesPricesMeasuerment[index],
                          productDescription: productDescriptionList[index])));
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left:   18.0),
                    child: Container(
                      width:MediaQuery.of(context).size.width/2.1,
                      height:MediaQuery.of(context).size.height/6,
                      decoration:BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(widget.productImageList[index],
                      fit: BoxFit.cover,
                      ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0,top: 14),
                          child: Text(widget.productNameList[index],style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: RichText(text:TextSpan(
                              children: [
                                TextSpan(text:widget.productPriceList[index],
                                    style: const TextStyle(

                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                    )
                                ),
                                TextSpan(text: widget.productPriceMeasureList[index],

                                  style:const TextStyle(color: Colors.grey,fontSize: 17), ),
                              ]
                          )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 14.0),
                              child: widget.button1
                            ),
                            if (widget.button2 != null) widget.button2!,
                          ],
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            );
          }
      ),
    );
  }
}
