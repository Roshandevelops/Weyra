import 'package:clot/presentation/home/ui/category_grid_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/constants/image_strings.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
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
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDarkMode
                    ? KAppColors.darkFillColor
                    : KAppColors.lightFillColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 10,
                    bottom: 10,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isDarkMode
                                ? KAppColors.kwhite
                                : KAppColors.lightFillColor,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: NetworkImage(
                                KImageStrings.sampleImage,
                              ),
                            ),
                          ),
                          width: 40,
                          height: 40,
                          // child: const CircleAvatar(
                          //   radius: 25,
                          //   backgroundImage:
                          //       NetworkImage(KImageStrings.sampleImage),
                          // ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Category Name",
                          style: Theme.of(context).textTheme.titleSmall,
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
