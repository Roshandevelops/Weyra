import 'package:clot/presentation/home/widgets/product_gridview_card_widget.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryGridScreen extends StatelessWidget {
  const CategoryGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  decoration: const BoxDecoration(
                    color: KAppColors.kFillColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(CupertinoIcons.left_chevron),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "Category Name  (no.of items)",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            const ProductGridViewCardWidget(),
          ],
        ),
      ),
    );
  }
}
