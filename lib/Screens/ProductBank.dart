import 'package:doumi/Screens/ProductCategory.dart';
import 'package:doumi/models/Category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';

class ProductBank extends StatefulWidget {
  const ProductBank({Key? key}) : super(key: key);

  @override
  _ProductBankState createState() => _ProductBankState();
}

class _ProductBankState extends State<ProductBank> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Color(0xffececec),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //head
                Container(
                height: 180,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90,left: 50),
                      child: Text("Categories",style:TextStyle(color: Color(0xff202e55),fontSize: 17,fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110,),
                      child: Image.asset("photos/fruits2.jpg", width: 200,height: 200,),
                    ),
                  ],
                ),
              ) ,
                Container(
                  height: size.height*1,
                  //width: size.width*0.5,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      //physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Column( children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            ProductCategory(Dairy());
                                          });
                                        },
                                        child: Dairy()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Meat(),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: SeaFood(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Vegetables(),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Fruits(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Fruits(),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ConservedFood(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Chicken().build(context),
                                  ),

                                ],
                              ),
                            ],),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                
              ],

            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Color(0xff6b75df), onPressed: () {  },),
    );
  }
}
