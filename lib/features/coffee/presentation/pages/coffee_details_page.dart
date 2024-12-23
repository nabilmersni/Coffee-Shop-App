import 'package:coffee_shop_app/core/common/entities/coffee.dart';
import 'package:coffee_shop_app/core/common/widgets/primary_button.dart';
import 'package:coffee_shop_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class CoffeeDetailsPage extends StatefulWidget {
  static route(Coffee coffee) => MaterialPageRoute(
        builder: (_) => CoffeeDetailsPage(coffee: coffee),
      );
  final Coffee coffee;
  const CoffeeDetailsPage({
    super.key,
    required this.coffee,
  });

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  String selectedIndex = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Detail"),
      //   centerTitle: true,
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.heart))],
      // ),
      backgroundColor: AppColors.xbackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        // physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 65),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              const Text(
                "Detail",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.heart),
              ),
            ],
          ),
          const SizedBox(height: 25),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.coffee.image,
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.coffee.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.coffee.type,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.xsecondaryColor,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/img/ic_star_filled.png",
                            width: 25,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.coffee.rate.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '(${widget.coffee.review})',
                            style: TextStyle(
                              color: AppColors.xsecondaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      "assets/img/bike.png",
                      "assets/img/bean.png",
                      "assets/img/milk.png",
                    ].map((e) {
                      return Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          e,
                          width: 25,
                          height: 25,
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              const SizedBox(height: 18),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black12,
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ReadMoreText(
                    trimLength: 110,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: " Read More",
                    trimExpandedText: " Read Less",
                    widget.coffee.description,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.xsecondaryColor,
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.xprimaryColor,
                    ),
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.xprimaryColor,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Size",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Size",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Size",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: ['S', '', 'M', '', 'L'].map((e) {
                          if (e == "") return const SizedBox(width: 20);
                          bool isSelected = selectedIndex == e;
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = e;
                                });
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.xprimaryColor.withOpacity(0.1)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: isSelected
                                        ? AppColors.xprimaryColor
                                        : Colors.black12,
                                    width: 1,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: isSelected
                                        ? AppColors.xprimaryColor
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.xsecondaryColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "\$ ${widget.coffee.price}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.xprimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Expanded(
              child: PrimaryButton(
                title: "Buy Now",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
