import 'package:clot/presentation/home/widgets/section_header.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

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
        const SectionHeader(leftHeader: "Categories"),
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
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
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
