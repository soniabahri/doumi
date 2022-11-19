import 'package:flutter/material.dart';

import 'Category_item.dart';



class Product_item extends StatelessWidget {
  final String name ; 
  final Category_item category ;
  final int quantity ;


  const Product_item(this.name, this.category, this.quantity);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        width: 140,
        height: 120,
        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 50,top: 10),
            //   child: Image.asset("photos/apple.png"),
            // ),
            Padding(
              padding:  EdgeInsets.only(right: 40,),
              child: Text("${category}", textAlign: TextAlign.left,style: const TextStyle(color: Color(0xff202e55),fontSize: 13),),
            ),

          ],
        ),

      ),
    );
  }
}
