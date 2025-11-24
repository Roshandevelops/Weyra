import 'package:clot/presentation/order_screen/widgets/cancel_tab_widget.dart';
import 'package:clot/presentation/order_screen/widgets/delivered_tab_widget.dart';
import 'package:clot/presentation/order_screen/widgets/processing_tab_widget.dart';
import 'package:clot/presentation/order_screen/widgets/returned_tab_widget.dart';
import 'package:clot/presentation/order_screen/widgets/shipping_tab_widget.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  static const List<String> names = [
    "Processing",
    "Shipped",
    "Delivered",
    "Returned",
    "Cancel",
  ];

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Orders',
          style: TextStyle(
            fontFamily: "gabarito",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TabBar(
                padding: EdgeInsets.zero,
                dividerColor: Colors.transparent,
                dividerHeight: 0,
                indicator: BoxDecoration(
                  color: KAppColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                controller: tabController,
                labelColor: isDarkMode ? KAppColors.kwhite : KAppColors.kwhite,
                unselectedLabelColor:
                    isDarkMode ? KAppColors.kwhite : KAppColors.dark,
                tabs: const [
                  Tab(text: "Processing"),
                  Tab(text: "Shipped"),
                  Tab(text: "Delivered"),
                  Tab(text: "Returned"),
                  Tab(text: "Cancel"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  ProcessingTabWidget(),
                  ShippingTabWidget(),
                  DeliveredTabWidget(),
                  ReturnedTabWidget(),
                  CancelTabWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
