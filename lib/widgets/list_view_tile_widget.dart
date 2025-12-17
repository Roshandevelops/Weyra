import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';

class ListViewTileWidget extends StatelessWidget {
  const ListViewTileWidget(
      {super.key,
      this.onTap,
      required this.children,
      this.enabled = true,
      required this.itemCount,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      this.physics = const BouncingScrollPhysics()});

  final void Function()? onTap;
  final int itemCount;
  final List<Widget> children;
  final bool enabled;

  final MainAxisAlignment mainAxisAlignment;

  final ScrollPhysics physics;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return SlidableAutoCloseBehavior(
      child: ListView.separated(
        physics: physics,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: mainAxisAlignment,
                    children: children,
                  ),
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
