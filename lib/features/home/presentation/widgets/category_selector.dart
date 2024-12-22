import 'package:coffee_shop_app/core/data/data.dart';
import 'package:coffee_shop_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: AppData.coffeeCategories.length,
        itemBuilder: (context, index) {
          final category = AppData.coffeeCategories[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(
                left: index == 0 ? 25 : 10,
                right: index == AppData.coffeeCategories.length ? 25 : 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: selectedCategory == index
                    ? AppColors.xprimaryColor
                    : AppColors.xsecondaryColor.withOpacity(0.1),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color:
                      selectedCategory == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
