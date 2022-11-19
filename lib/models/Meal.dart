import 'package:doumi/models/Product.dart';
import 'package:flutter/material.dart';


class Meal extends StatelessWidget {
  final String name ;
  final List<Product> items ;
  final String description ;
  final Widget image ; 
  const Meal({Key? key, required this.name, required this.items, required this.description, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,left: 30,),
      child: Container(
        width: 140,
        height: 130,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,border: Border.all(color: Color(0xffc3c5cd))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: image,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 15),
              child: Text(""+name ,textAlign: TextAlign.left,style: TextStyle(color: Color(0xff202e55),fontSize: 13,),),
            ),
          ],
        ),
      ),
    );
  }
}

class CouscousMeal extends Meal{
  CouscousMeal(): super(
    name: "Couscous", description: "c'est un plat de kdekqdlms" ,items: [Fish(),Fish()],
    image: Container(child: Image.asset("photos/couscous.png"),width: 80,height: 80,)
);}

class SoupeMeal extends Meal{
  SoupeMeal(): super(
      name: "Soupe", description: "c'est un plat de soupe tunisien" ,items: [Fish(),Fish()],
      image: Container(child: Image.asset("photos/soupe.png"),width: 80,height: 80,)
  );}