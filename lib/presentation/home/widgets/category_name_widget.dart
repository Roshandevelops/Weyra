import 'package:clot/presentation/home/ui/category_grid_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const CategoryGridScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: KAppColors.kFillColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 10,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage("https://bellard.org/bpg/2.png"),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Category Name",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: 15,
      ),
    );
  }
}
