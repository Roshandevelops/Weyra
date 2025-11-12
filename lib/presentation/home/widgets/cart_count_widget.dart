import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCountWidget extends StatelessWidget {
  const CartCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: KAppColors.primaryColor,
            radius: 25,
            child: IconButton(
              icon: const Icon(
                Iconsax.shopping_bag,
                color: KAppColors.kwhite,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
