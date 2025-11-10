import 'package:clot/presentation/home/widgets/product_tile_widget.dart';
import 'package:flutter/material.dart';

class ProductGridViewCardWidget extends StatelessWidget {
  const ProductGridViewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductTileWidget();
        },
      ),
    );
  }
}
