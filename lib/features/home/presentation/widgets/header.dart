import 'package:coffee_shop_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SizedBox(height: 60),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(
                  color: AppColors.xsecondaryColor,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    "Bilzen, Tanjungbalai",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.xsecondaryColor,
                  )
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xff2a2a2a),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/img/ic_search.png",
                            color: Colors.white,
                            height: 35,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(0),
                                isDense: true,
                                hintText: "Search coffee",
                                hintStyle: TextStyle(
                                  color: AppColors.xsecondaryColor,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.xprimaryColor,
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/img/banner.png",
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
