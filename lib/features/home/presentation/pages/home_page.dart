import 'package:coffee_shop_app/features/home/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            Container(
              height: 280,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 17, 17, 17),
                    Color.fromARGB(255, 49, 49, 49),
                  ],
                ),
              ),
            ),
            const Header(),
          ],
        ),
      ],
    );
  }
}
