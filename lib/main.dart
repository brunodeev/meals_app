// ignore_for_file: library_private_types_in_public_api
import 'package:meals/screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliMeals',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.pink,
            secondary: Colors.amber,
          ),
          textTheme: theme.textTheme.copyWith(
            headline6: const TextStyle(
              fontFamily: 'Raleway',
            ),
            headline5: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        routes: {
          AppRoutes.HOME: (context) => const CategoriesScreen(),
          AppRoutes.CATEGORIES_MEALS: (context) =>
              const CategoriesMealsScreen(),
        });
  }
}
