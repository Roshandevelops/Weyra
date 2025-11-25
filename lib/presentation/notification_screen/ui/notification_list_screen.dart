import 'package:clot/widgets/list_view_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Notifications',
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
          children: [
            Flexible(
              child: ListViewTileWidget(
                itemCount: 16,
                enabled: true,
                children: [
                  const Icon(Iconsax.notification_bing),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "Your order has been confirmed and will be shipped within 3 working days",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
