import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/constants/image_strings.dart';
import 'package:clot/widgets/list_view_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Order #4512263",
          style: TextStyle(
            fontFamily: "gabarito",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: KAppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Image.asset(
                          KImageStrings.checkLine,
                        ),
                      ),
                    ),
                    title: const Text("Delivered"),
                    trailing: Text(
                      DateTime.now().toString().substring(0, 10),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Items"),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListViewTileWidget(
                      physics: const NeverScrollableScrollPhysics(),
                      enabled: false,
                      itemCount: 1,
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
                                "4 Items",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              /// View all items
                            },
                            child: const Text("View All"))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipping Details"),
                        SizedBox(height: 10),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: KAppColors.lightFillColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "ADDRESS DETAILS HERE",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
