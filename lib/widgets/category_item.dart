import 'package:deli_meals/screens/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
   final String title;
   final Color color;
   final String id;
  CategoryItem( this.color,  this.title,  this.id);
  void selectCategory(BuildContext context){
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeNamed,
    arguments:{'id':id,'title':title,} );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectCategory(context),
      splashColor: Colors.redAccent,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
        ),
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
