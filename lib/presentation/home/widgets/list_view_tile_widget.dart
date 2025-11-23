import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';

class ListViewTileWidget extends StatelessWidget {
  const ListViewTileWidget({
    super.key,
    required this.onTap,
    required this.children,
    this.enabled = true,
    required this.itemCount,
  });

  final void Function()? onTap;
  final int itemCount;

  // final String text;
  final List<Widget> children;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Flexible(
      child: ListView.separated(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Slidable(
            closeOnScroll: true,
            key: ValueKey(index),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  borderRadius: BorderRadius.circular(8),
                  onPressed: (context) {},
                  backgroundColor: isDarkMode
                      ? KAppColors.lightFillColor
                      : KAppColors.darkFillColor,
                  foregroundColor:
                      isDarkMode ? KAppColors.dark : KAppColors.light,
                  icon: Iconsax.close_circle,
                  label: 'Clear',
                ),
              ],
            ),
            enabled: enabled,
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 80,
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
                        children: children,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
