import 'package:clot/presentation/home/widgets/cart_count_widget.dart';
import 'package:clot/presentation/home/widgets/category_item_widget.dart';
import 'package:clot/presentation/home/widgets/gender_dropdown_widget.dart';
import 'package:clot/presentation/home/widgets/product_card_widget.dart';
import 'package:clot/presentation/home/widgets/search_widget.dart';
import 'package:clot/presentation/home/widgets/section_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://bellard.org/bpg/2.png"),
                radius: 25,
              ),
              GenderDropdownWidget(),
              CartCountWidget(),
            ],
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                SearchWidget(),
                SizedBox(height: 24),
                CategoryItemWidget(),
                SizedBox(height: 16),
                SectionHeader(leftHeader: "Top Selling"),
                SizedBox(height: 24),
                ProductCardWidget(),
                SizedBox(height: 24),
                SectionHeader(leftHeader: "New In"),
                SizedBox(height: 16),
                ProductCardWidget(),
                SizedBox(height: 24)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
