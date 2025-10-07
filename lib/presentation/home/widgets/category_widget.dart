import 'package:clot/presentation/home/widgets/section_header.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(leftHeader: "Categories"),
        SizedBox(height: 20),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final categories = [
                "Shirts",
                "Pants",
                "Shoes",
                "Bags",
                "Watches"
              ];
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: KAppColors.kFillColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  SizedBox(height: 10),
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
