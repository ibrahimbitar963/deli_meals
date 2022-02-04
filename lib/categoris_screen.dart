import 'package:deli_meals/category_item.dart';
import 'package:deli_meals/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES.map((ctx) =>
          CategoryItem(ctx.color, ctx.title, ctx.id),
          ).toList(),
        ),
      ) ,
    );
  }
}
