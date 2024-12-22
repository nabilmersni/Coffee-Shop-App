import 'package:coffee_shop_app/core/data/data.dart';
import 'package:coffee_shop_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppMainPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (_) => const AppMainPage(),
      );
  const AppMainPage({super.key});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  int indexMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.xbackgroundColor,
      body: AppData.menu[indexMenu]['destination'] as Widget,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(
            AppData.menu.length,
            (index) {
              Map item = AppData.menu[index];
              final bool isActive = index == indexMenu;
              return Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      indexMenu = index;
                    });
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item['icon'],
                          color: isActive
                              ? AppColors.xprimaryColor
                              : AppColors.xsecondaryColor,
                          size: 25,
                        ),
                        const SizedBox(height: 7),
                        Container(
                          height: 5,
                          width: 15,
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppColors.xprimaryColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
