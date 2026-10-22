import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/categories.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category){
    final filteredMeals = dummyMeals.where((meal)=> meal.categories.contains(category.id)).toList();
    Navigator.of(context).push(
      MaterialPageRoute(
      builder: (ctx)=> MealsScreen
      (title: category.title,
       meals: filteredMeals
      )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2, 
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20 ),
        children: [
          //availableCategories.map((category)) => CategoryGiridItem(category:category).toList()
         for(final category in availableCategories)
            CategoryGridItem(category: category, 
            onSelectCategory: () {
              _selectCategory(context, category);
            } ,)
        ],
        ),
    );
  }
}

// categories.dart	                                                                       category_grid_item.dart
// Saare cards ko arrange karta hai.	                                                     Ek card banata hai.
// Decide karta hai kitne cards honge.	                                                   Decide karta hai ek card kaisa dikhega.
// Card click hone par next screen kholne ka function deta hai.	                         Click hone par us function ko call karta hai.