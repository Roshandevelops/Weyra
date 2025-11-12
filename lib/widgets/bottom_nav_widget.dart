import 'package:clot/presentation/home/ui/home_screen.dart';
import 'package:clot/presentation/notification_screen/notification_screen.dart';
import 'package:clot/presentation/order_screen/order_screen.dart';
import 'package:clot/presentation/profile_screen/profile_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    NotificationScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: GNav(
        gap: 8,
        color: isDarkMode
            ? KAppColors.hintLabelDarkColor
            : KAppColors.hintLabelLightColor,
        activeColor: KAppColors.primaryColor,
        iconSize: 24,
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        tabs: const [
          GButton(icon: Iconsax.home),
          GButton(icon: Iconsax.notification_bing),
          GButton(icon: Iconsax.receipt),
          GButton(icon: Iconsax.user),
        ],
      ),
    );
  }
}
