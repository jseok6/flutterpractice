import 'package:flutter/material.dart';
import 'package:flutter_recipe/pages/Recipe_Page.dart';

void main()
{
  runApp(const flutter_recipe());
}

class flutter_recipe extends StatelessWidget {
  const flutter_recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Recipe_Page(),
    );
  }
}