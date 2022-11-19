import 'package:doumi/Screens/MealBank.dart';
import 'package:doumi/Screens/ProductBank.dart';
import 'package:doumi/Screens/Profile.dart';
import 'package:doumi/Screens/SelectedMeals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'FoodApp.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _selecteditem = 2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(


        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          title: const Text("Doumi",style: TextStyle(color:Color(0xff212e54) ),),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search,color: Colors.black,),
            )
          ],
        ),


        bottomNavigationBar:
            SizedBox(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35 , 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(child: Icon(Icons.shopping_basket, color: (_selecteditem == 0)? const Color(0xff61687b): const Color(0xffdcdfe5)), onTap: (){
                      setState(() {
                        _selecteditem = 0;
                      });
                    },)  ,
                    GestureDetector(child: Icon(Icons.category,color: (_selecteditem == 1)? const Color(0xff61687b): const Color(0xffdcdfe5)),
                    onTap: () {
                      setState(() {
                        _selecteditem = 1;

                      });
                    },),
                     GestureDetector(child: Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.0),color: (_selecteditem == 2)?const Color(0xff6b75df) : Color(0xfffafafa)),
                       child: Icon(Icons.food_bank,color: (_selecteditem == 2)? Colors.white: const Color(0xffdcdfe5),),
                       ),
                       onTap: () {
                         setState(() {
                           _selecteditem = 2;
                         });
                       },),
                    GestureDetector(child:  Icon(Icons.app_registration,color: (_selecteditem == 3)? const Color(0xff61687b): const Color(0xffdcdfe5),),
                      onTap: () {
                        setState(() {
                          _selecteditem = 3;
                        });
                      },),
                    GestureDetector(child: Icon(Icons.supervisor_account_sharp,color: (_selecteditem == 4)? const Color(0xff61687b): const Color(0xffdcdfe5),),
                      onTap: () {
                        setState(() {
                          _selecteditem = 4;
                        });
                      },),
                  ],
                ),
              )
            ),


        body: (_selecteditem == 0) ? MealBank()  : (_selecteditem == 1) ? ProductBank() : (_selecteditem == 2 ) ? FoodApp() :(_selecteditem == 3) ?  SelectedMeals(): Profile() ,
    ),);
  }
}





//PersistentBottomNavBar
// child: BottomNavigationBar(
//   selectedLabelStyle: TextStyle(color: Colors.black),
//   unselectedLabelStyle: TextStyle(color: Colors.black),
//   currentIndex: _selecteditem,
//   backgroundColor: Color(0xff6773d9),
//   onTap: (index) => setState(() {
//     _selecteditem = index ;
//   }),
//   items: const [
//     BottomNavigationBarItem(icon: Icon(Icons.food_bank,color: Color(0xff1b2644)),label: "food"),
//     BottomNavigationBarItem(icon: Icon(Icons.shopping_basket,color: Color(0xff1b2644)),label: "shopping"),
//     BottomNavigationBarItem(icon: Icon(Icons.add,color: Color(0xff1b2644),),label: "add"),
//     BottomNavigationBarItem(icon: Icon(Icons.settings,color: Color(0xff1b2644),),label: "settings"),
//     BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_sharp,color: Color(0xff1b2644),),label: "profile"),
//   ],
// ),
