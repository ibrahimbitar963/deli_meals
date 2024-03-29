import 'package:deli_meals/dummy_data.dart';
import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';


class CategoryMealsScreen  extends StatelessWidget {
  static const routeNamed= '/categoriesmeals';


  @override
  Widget build(BuildContext context) {
    final routeArgs =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle! ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return MealItem(title: categoryMeals[index].title ,
          affordability:categoryMeals[index].affordability ,
          complexity:categoryMeals[index].complexity ,
          duration:categoryMeals[index].duration ,
         imageUrl:categoryMeals[index].imageUrl ,);
      },
      itemCount: categoryMeals.length,),
    );
  }
}
