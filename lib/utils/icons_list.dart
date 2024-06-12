import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  final List<Map<String, dynamic>> homeExpensesCategories = [
    {
      "name": "Gas Filing",
      "icon": FontAwesomeIcons.gasPump,
    },
    {
      "name": "Grocery",
      "icon": FontAwesomeIcons.shoppingCart,
    },
    {
      "name": "Milk",
      "icon": FontAwesomeIcons.mugHot,
    },
    {
      "name": "Internet",
      "icon": FontAwesomeIcons.wifi,
    },
    {
      "name": "Eletricity",
      "icon": FontAwesomeIcons.bolt,
    },
    {
      "name": "Water",
      "icon": FontAwesomeIcons.water,
    },
    {
      "name": "Rent",
      "icon": FontAwesomeIcons.home,
    },
    {
      "name": "Phone Bill",
      "icon": FontAwesomeIcons.phone,
    },
    {
      "name": "Dining Out",
      "icon": FontAwesomeIcons.utensils,
    },
    {
      "name": "Clothing",
      "icon": FontAwesomeIcons.tshirt,
    },
    {
      "name": "Insurence",
      "icon": FontAwesomeIcons.shieldAlt,
    },
    {
      "name": "Education",
      "icon": FontAwesomeIcons.graduationCap,
    },
    {
      "name": "Others",
      "icon": FontAwesomeIcons.cartPlus,
    },
  ];

  IconData getExpenseCategoryIcon(String categoryName) {
    final category = homeExpensesCategories.firstWhere(
        (category) => category['name'] == categoryName,
        orElse: () => {"icon": FontAwesomeIcons.shoppingCart});
    return category['icon'];
  }
}
