import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:doumi/Screens/Accueil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
   home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          child :SingleChildScrollView(
            child: Column(
               children: [
                  const SizedBox(height: 45,),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image.asset("photos/meals.png", width: size.width *0.9,height: 300,),
                  ),
                  const SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),
                    child:  AnimatedTextKit(animatedTexts: [
                      WavyAnimatedText("Welcome to doumi",textAlign: TextAlign.center,textStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),),
                    ],
                      repeatForever: true,
                      isRepeatingAnimation: true,

                  ) ,
                  ),
                 SizedBox(height: 30,),
                  
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        width: size.width*0.9,
                        decoration: BoxDecoration(color: Color(0xff6b75df),borderRadius: BorderRadius.circular(15.0)),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Start",style: TextStyle(fontSize: 15,color: Colors.white),)

                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                            ),
                            ],
                            ),),
                    ),
                    onTap: (){

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Accueil()));
                    },
                  ),
            ]

            ),
          ),
        ),
      ),
    );
  }
}
