import 'package:clot/presentation/order_screen/ui/order_details_screen.dart';
import 'package:clot/widgets/list_view_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProcessingTabWidget extends StatelessWidget {
  const ProcessingTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewTileWidget(
      enabled: false,
      itemCount: 16,
      children: [
        const Icon(Iconsax.receipt),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                "Order #4512263",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Text("4 Items")
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const OrderDetailsScreen();
                },
              ),
            );
          },
          icon: const Icon(Iconsax.arrow_right_3),
        )
      ],
    );
  }
}
