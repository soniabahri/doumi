import 'package:flutter/material.dart';

class Category_item extends StatelessWidget {
  final String name ;
  final Color backgroundcolor ;
  final Widget image ;

  const Category_item(this.name, this.backgroundcolor,this.image, {Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        width: 140,
        height: 120,
        decoration: BoxDecoration(color:backgroundcolor,borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 10),
              child: image,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 40,),
              child: Text("${name}", textAlign: TextAlign.left,style: const TextStyle(color: Color(0xff202e55),fontSize: 13),),
            ),

          ],
        ),

      ),
    );
  }
}


class Vegetables extends Category_item{
  Vegetables() : super("Vegetables",Color(0xffdbeaac),Column( children : [SizedBox(height: 10,),Container(child :Image.asset("photos/vegetables.png"),width: 70,height: 70)]));

}

class Fruits extends Category_item {
  Fruits() : super("Fruits",Color(0xffffefed),Column( children : [SizedBox(height: 10,),Container(child :Image.asset("photos/apple.png"),width: 40,height: 50)]));
}

class Dairy extends Category_item{
  Dairy() : super("Dairy",Color(0xff6b75df),Column( children : [SizedBox(height: 10,),Container(child :Image.asset("photos/dairy.png"),width: 40,height: 65)]));

}

class Meat extends Category_item{
  Meat() : super('Meat', Color(0xfff6a985), Container(child:Image.asset("photos/meat.png"),width: 80,height: 80,));

}

class Chicken extends Category_item{
  Chicken() : super("Chicken",Color(0xffdbeaac),Container(child:Image.asset("photos/chicken.png"),width: 80,height: 80,));

}

class SeaFood extends Category_item{
  SeaFood() : super("Sea Food",Color(0xff56b7e7),Column( children : [Padding(padding: const EdgeInsets.only(top: 0),
      child: Container(child:Image.asset("photos/fish.png"),width: 80,height: 80,)),]));

}

class ConservedFood extends Category_item{
  ConservedFood() : super("Conserved", Color(0xfffede99),
      Column( children : [SizedBox(height: 10,),Container(child :Image.asset("photos/conserved.png"),width: 40,height: 65)]));

}

class Egg extends Category_item{
  Egg() : super('Egg',Color(0xff56b7e7),Column( children : [SizedBox(height: 10,),Container(child :Image.asset("photos/conserved.png"),width: 40,height: 65)]));
}