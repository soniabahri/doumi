import 'package:doumi/Screens/ProductBank.dart';
import 'package:doumi/models/Meal.dart';
import 'package:flutter/material.dart';

import '../models/Category_item.dart';
import '../models/Product.dart';
import 'MealBank.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  // final _scroll_controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;


    return SafeArea(
      child: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:  EdgeInsets.only(left: 30,right: 30,top: 40),
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      width: size.width*0.99,
                      height: 130,
                      decoration: BoxDecoration(color: const Color(0xffebf3d0),borderRadius: BorderRadius.circular(20)),
                 child: Padding(
                     padding: EdgeInsets.only(top: 15,left: 7),
                     child: Column(
                       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: EdgeInsets.only(right:size.width*0.6,bottom: 10),
                           child: const Text("Fridge List",textAlign: TextAlign.left,style: TextStyle(color: Color(0xff212e54),fontSize: 18,fontWeight: FontWeight.bold),),
                         ),
                         Padding(padding: const EdgeInsets.only(top: 5,left: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 1),
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: const Color(0xffdbeaac)
                                 ),
                                 child: const Padding(
                                   padding: EdgeInsets.all(10.0),
                                   child: Text("1",textAlign: TextAlign.center,),
                                 ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 1),
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       color: const Color(0xfff6a985)
                                   ),
                                   child: const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Text("2",textAlign: TextAlign.center,),
                                   ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 1),
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       color: const Color(0xff56b7e7)
                                   ),
                                   child: const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Text("3",textAlign: TextAlign.center,),
                                   ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 1),
                                 child: Container(
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       color: const Color(0xfffede99)
                                   ),
                                   child: const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Text("4",textAlign: TextAlign.center,),
                                   ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 5),
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       color: const Color(0xfff7212e54),
                                   ),
                                   child: const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Icon(Icons.add , color: Colors.white,size: 14,),
                                   ),),
                               ),
                             ],
                           ),)

                       ],
                     ),
                 ), ),
                  ),),

              Container(
                  width: size.width,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:40,top: 30),
                      child: Text("Categories",style:TextStyle(color: Color(0xff202e55),fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductBank()),),
                      child: Padding(padding: EdgeInsets.only(left: 10,top: 33),
                      child: Icon(Icons.navigate_next,size: 21,color: Color(0xff202e55),),),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(top: 15,left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row( children: [
                      GestureDetector(
                          onTap: ()=> {

                          },),
                      Dairy(),
                      Container(height:150,width :150,child: Fruits()),
                      Meat(),
                      Chicken(),
                      SeaFood(),
                      Vegetables(),
                      ConservedFood(),
                      Egg(),

                    ],),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:40,top: 30),
                      child: Text("Usually cooked",style:TextStyle(color: Color(0xff202e55),fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MealBank()),),
                      child: Padding(padding: EdgeInsets.only(left: 10,top: 33),
                        child: Icon(Icons.navigate_next,size: 21,color: Color(0xff202e55),),),
                    ),

                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                    SoupeMeal(),
                      SoupeMeal(),
                      CouscousMeal() ,
                      SoupeMeal()
                    ],
                  ),
                )
    ]
    ,),
          ),),
      ),);
  }
}



// Padding(
//   padding: const EdgeInsets.only(right: 10),
//   child: Container(
//       width: 30,
//       height: 30,
//       child: Image.asset("assets/photos/shopping-bag.png")),
// ),