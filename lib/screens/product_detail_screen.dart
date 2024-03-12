import 'package:flutter/material.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/colors_variables/variables.dart';
import 'package:non_contact_delivery/lists/product_description_list.dart';
import 'package:non_contact_delivery/lists/vegitables_iagme_name_list.dart';
import 'package:non_contact_delivery/resable_widgets/larger_reusable_button.dart';
import 'package:non_contact_delivery/resable_widgets/small_reuseable_botton.dart';

class ProductDetailScreen extends StatefulWidget {

  final String imageOfProduct;
  final String nameOfProduct;
  final String priceOfProduct;
  final String priceMeasurement;
  final String productDescription;
  const ProductDetailScreen({super.key,

    required this.imageOfProduct,
    required this.nameOfProduct,
    required this.priceOfProduct,
    required this.priceMeasurement,
    required this.productDescription
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(


          children: [

            Positioned(
              top: 30,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios)),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(widget.imageOfProduct,
                  height: MediaQuery.of(context).size.height/3.5,
                fit: BoxFit.fill,
                ),
              ),
            ),

            Positioned(
             // top: 370,
              bottom: 0,
             // left: 100,
              child: Container(
                height: MediaQuery.of(context).size.height/1.65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)
                  ),
                  color: mainAppColor,
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0,top: 40),
                      child: Text(widget.nameOfProduct,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0,top: 20),
                          child:  Text(widget.priceOfProduct,style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0,top: 20),
                          child:  Text(widget.priceMeasurement,style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0,top: 25),
                      child: Text("Spain",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0,top: 20),
                      child: Text(widget.productDescription,
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: TextStyle(

                        fontSize: 10,
                      ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 10.0,top: 5),
                            child: SmallReusableButton(
                                buttonColor: whiteColor,
                                buttonIcon: Icons.favorite_outline,
                                iconColor: Colors.grey),
                          ),
                          Container(
                            width: 270,
                            child: LargerReusableButton(
                                largerButtonColor: Colors.green,
                                largerButtonText: addToCart,
                                onPressFunction: (){},
                                buttonTextColor: whiteColor),
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
