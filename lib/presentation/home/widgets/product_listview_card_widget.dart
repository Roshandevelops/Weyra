import 'package:clot/presentation/home/widgets/product_tile_widget.dart';
import 'package:flutter/material.dart';

class ProductListViewCardWidget extends StatelessWidget {
  const ProductListViewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ProductTileWidget();
        },
      ),
    );
  }
}
