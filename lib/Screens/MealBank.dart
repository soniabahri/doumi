import 'package:doumi/models/Category_item.dart';
import 'package:doumi/models/Meal.dart';
import 'package:doumi/models/Product.dart';
import 'package:flutter/material.dart';

class MealBank extends StatefulWidget {
  const MealBank({Key? key}) : super(key: key);

  @override
  _MealBankState createState() => _MealBankState();
}

class _MealBankState extends State<MealBank> {
  bool value = false;
  List<Product> list = [Fish(),Fish(),Fish()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
          child: Container(
          color: const Color(0xffececec),
            child: Column(
              children: [
                //head
                Container(
                  height: 180,
                  decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 110,left: 20),
                        child: Image.asset("photos/dancingfruits2.jpg", width: 200,height: 200,),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 90,right: 50),
                        child: Text("Meals",style:TextStyle(color: Color(0xff202e55),fontSize: 17,fontWeight: FontWeight.bold)),
                      ),

                    ],
                  ),
                ) ,

                SizedBox(
                  height: size.height*1,
                  //width: size.width*0.5,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      //physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50),
                                child: Column( children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: CouscousMeal(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: SoupeMeal(),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: SoupeMeal(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: CouscousMeal(),
                                      ),
                                    ],
                                  ),
                                ],),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
      )







            ,),),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff6b75df), onPressed: () {
          showModalBottomSheet(
              context: context,

              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
              builder: (context) {
            return SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40,),


                  const Text("Meal",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff6b75df)),),


                  const Padding(
                    padding: EdgeInsets.only(top: 20,right: 5,left: 5),
                    child: TextField(decoration: InputDecoration(
                        hintText: "meal name",
                        hintStyle: TextStyle(fontSize: 12,)),),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 30,right: size.width*0.78),
                    child: const Text("Category",style:TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(color: const Color(0xfff8efff),borderRadius: BorderRadius.circular(15.0)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("Breakfast",textAlign: TextAlign.center,style:TextStyle(fontSize: 14,color: Color(0xffdabff1))),
                              ),
                            ),
                          ),
                        ) ,
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(color: const Color(0xffffe7c2),borderRadius: BorderRadius.circular(15.0)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("Lunch",textAlign: TextAlign.center,style:TextStyle(fontSize: 14,color: Color(0xffdd9d80))),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(color: const Color(0xffffefed),borderRadius: BorderRadius.circular(15.0)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("Dinner",textAlign: TextAlign.center,style:TextStyle(fontSize: 14,color: Color(0xffe3b9b6))),
                              ),
                            ), ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(color: const Color(0xffe7fbff),borderRadius: BorderRadius.circular(15.0)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("Dessert",textAlign: TextAlign.center,style:TextStyle(fontSize: 14,color: Color(0xffaad4dc))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ) ,


                  Padding(
                    padding: EdgeInsets.only(top: 30,right: size.width*0.75),
                    child: const Text("Description",style:TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                  ),


                  const Padding(
                    padding: EdgeInsets.only(top: 20,right: 5,left: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Description",
                          hintStyle: TextStyle(fontSize: 12,)),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 30,right: size.width*0.7),
                    child: const Text("List of Products",style:TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                  ),


                  Container(
                    height: 50,
                    child: ListView(
                      children: [Checkbox(
                          value: value,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                          setState(() =>
                          this.value = value!
                        );
                      })],
                    ),
                  ),


                  const SizedBox(height: 0,),

                  Padding(
                    padding: const EdgeInsets.only(right: 20,top: 12),
                    child: Container(
                      height: 50,
                      width: size.width*0.9,
                      decoration: BoxDecoration(color: const Color(0xff6b75df),borderRadius: BorderRadius.circular(15.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Add",style: TextStyle(fontSize: 15,color: Colors.white),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(Icons.add,color: Colors.white,size: 15,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30,),

                ],
              ),
              ),
            );
          });
    },
        child: const Icon(Icons.add,color: Colors.white,),),

    );
  }
}
