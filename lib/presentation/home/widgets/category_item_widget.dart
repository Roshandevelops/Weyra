import 'package:clot/presentation/home/widgets/section_header.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Shirts",
      "Pants",
      "Shoes",
      "Bags",
      "Watches",
    ];
    return Column(
      children: [
        SectionHeader(
          leftHeader: "Categories",
          onTap: onTap,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://bellard.org/bpg/2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: KAppColors.kFillColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index],
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
