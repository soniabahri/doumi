import 'package:doumi/models/Category_item.dart';
import 'package:doumi/models/Product.dart';
import 'package:flutter/material.dart';



class ProductCategory extends StatefulWidget {
  const ProductCategory(Category_item category, {Key? key}) : super(key: key);

  @override
  _ProductCategoryState createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("test"),
    );
  }
}
