

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/viewrecipe.dart';

void main()
{
  runApp(RecipeApp());
}
class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("RECIPE APP")),
        ),
        body: ViewRecipe(),

      ),
    );
  }
}
