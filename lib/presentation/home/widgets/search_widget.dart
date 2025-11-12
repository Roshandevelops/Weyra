import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/app_textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 50,
      child: TextformFieldWidget(
        // hintStyle: TextStyle(
        //     fontSize: 16, color: isDarkMode ? Colors.white : Colors.black),
        fillColor: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200,
        hintText: "Search",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsetsGeometry.only(left: 20, right: 10),
          child: Icon(
            size: 20,
            Iconsax.search_normal_1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
