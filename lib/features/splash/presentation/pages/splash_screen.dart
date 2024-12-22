import 'package:coffee_shop_app/core/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Image.asset(
              "assets/img/bg.png",
              width: size.width,
              height: size.height / 1.3,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 45,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Fall in Love with Coffee in Blissful Delight!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    PrimaryButton(
                      onTap: () {},
                      title: "Get Started",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
