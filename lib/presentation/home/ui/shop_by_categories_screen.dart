import 'package:clot/presentation/home/ui/category_grid_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/constants/image_strings.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/list_view_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 63,
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? KAppColors.darkFillColor
                        : KAppColors.lightFillColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    CupertinoIcons.left_chevron,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Shop by Categories",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 14),
            ListViewTileWidget(
              mainAxisAlignment: MainAxisAlignment.start,
              itemCount: 4,
              enabled: false,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? KAppColors.kwhite
                        : KAppColors.lightFillColor,
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: NetworkImage(
                        KImageStrings.sampleImage,
                      ),
                    ),
                  ),
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    "Category Name",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CategoryGridScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
