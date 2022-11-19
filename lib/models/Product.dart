import 'dart:ui';

import 'package:doumi/models/Category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product {
  final String name ;
  final Color backgroundcolor ;
  final Category_item category ;

   Product(this.name, this.backgroundcolor, this.category) ;

}
class Fish extends Product {
  Fish() : super("Fish", const Color(0xff56b7e7),SeaFood()) ;
}

