import 'dart:async';
import 'package:flutter/material.dart';

class SelectedMeals extends StatefulWidget {
  const SelectedMeals({Key? key}) : super(key: key);

  @override
  _SelectedMealsState createState() => _SelectedMealsState();
}

class _SelectedMealsState extends State<SelectedMeals> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer() ;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child: Image.asset("photos/bag.webp",height: 350,width: 350,)),
            Text("Analyzing data ...",style: TextStyle(color: Color(0xff202e55),fontSize: 21,fontWeight: FontWeight.bold),),
            SizedBox(height: 60,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>( Color(0xff6b75df)),) ,



          ],
        ),
      ),
    );
  }

  startTimer() async{
    var duration = Duration(seconds: 3) ;
    return Timer(duration, route);
  }
  route() {
    return ResultMeals();
  }
}

class ResultMeals extends StatefulWidget {
  const ResultMeals({Key? key}) : super(key: key);

  @override
  _ResultMealsState createState() => _ResultMealsState();
}

class _ResultMealsState extends State<ResultMeals> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Text("Hello world "),
      ),
    );
  }
}
