import 'package:clot/presentation/home/widgets/list_view_tile_widget.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
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
            ListViewTileWidget(
              itemCount: 6,
              enabled:true,
              children: [
                const Icon(Iconsax.notification_bing),
                const SizedBox(width: 20),
                Text(
                  "Your order has been confirmed",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
