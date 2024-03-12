import 'package:flutter/material.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/colors_variables/variables.dart';
import 'package:non_contact_delivery/lists/bottom_nav_bar_list.dart';
import 'package:non_contact_delivery/lists/categories_images_names_list.dart';
import 'package:non_contact_delivery/lists/product_description_list.dart';
import 'package:non_contact_delivery/lists/vegitables_iagme_name_list.dart';
import 'package:non_contact_delivery/screens/categories_product_list.dart';
import 'package:non_contact_delivery/screens/product_detail_screen.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainAppColor,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color:    mainAppColor,  //Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                child: Text(
                  categories,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: boldTextColor),
                ),
              ),

              Padding(// form here single child scroll view
                  padding: const EdgeInsets.only(top: 30, left: 27),
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

              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top: 43, ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>const CategoriesProductList()));
                },
                child: GridView.builder(
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 20,
                    ),
                    physics:const  NeverScrollableScrollPhysics(),
                    itemCount: categoriesImageList.length,
                    shrinkWrap: true,
                    //scrollDirection: Axis.vertical,
                    itemBuilder: (buildContext, int index){
                  return Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 0,color: Colors.grey.shade400),
                      shape: BoxShape.rectangle,
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height/7.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(categoriesImageList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 8.0),
                          child: Text(categoriesTitleList[index],style:
                          const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 5.0,bottom: 15.0),
                          child: Text(categoriesItemsCount[index],style:
                          const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10.0),),
                        )

                      ],
                    ),
                  );
                    }
                
                ),
              ),


              ),


            ],
          ),
        ),
      ),

    );
  }
}
