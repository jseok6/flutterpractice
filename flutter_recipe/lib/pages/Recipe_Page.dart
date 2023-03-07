import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe/components/Recipe_ListItem.dart';
import 'package:flutter_recipe/components/Recipe_Menu.dart';
import 'package:flutter_recipe/components/Recipe_Title.dart';


AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: const [
      Icon(
        CupertinoIcons.search,
        color: Colors.black,

      ),
      SizedBox(width: 15),
      Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      SizedBox(width: 15),
    ],
  );
}

class Recipe_Page extends StatelessWidget {
  const Recipe_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            Recipe_Title(),
            Recipe_Menu(),
            Recipe_ListItem("coffee", "Made Coffee"),
            Recipe_ListItem("burger", "Made Burger"),
            Recipe_ListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }
}
