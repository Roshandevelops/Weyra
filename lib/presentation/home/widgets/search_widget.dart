import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/widgets/app_textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextformFieldWidget(
        hintText: "Search",
        hintStyle: const TextStyle(
            color: KAppColors.kblack,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Iconsax.search_normal_1,
          color: KAppColors.kblack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
