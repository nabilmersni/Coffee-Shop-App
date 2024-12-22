import 'package:coffee_shop_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeDetailsPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (_) => const CoffeeDetailsPage(),
      );
  const CoffeeDetailsPage({super.key});

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.heart))],
      ),
      backgroundColor: AppColors.xbackgroundColor,
      body: ListView(),
    );
  }
}
