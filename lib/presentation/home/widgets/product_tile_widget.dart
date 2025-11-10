import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 160,
      decoration: BoxDecoration(
        color: KAppColors.kFillColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Image.network(
            "https://bellard.org/bpg/2.png",
            height: 200,
            width: 160,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(Iconsax.heart),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                color: KAppColors.kFillColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Name",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "\$99.99",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
