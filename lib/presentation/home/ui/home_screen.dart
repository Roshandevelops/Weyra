import 'package:clot/presentation/home/ui/category_list_screen.dart';
import 'package:clot/presentation/home/widgets/cart_count_widget.dart';
import 'package:clot/presentation/home/widgets/category_item_widget.dart';
import 'package:clot/presentation/home/widgets/gender_dropdown_widget.dart';
import 'package:clot/presentation/home/widgets/product_listview_card_widget.dart';
import 'package:clot/presentation/home/widgets/search_widget.dart';
import 'package:clot/presentation/home/widgets/section_header.dart';
import 'package:clot/utils/constants/image_strings.dart';
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
                backgroundImage: NetworkImage(KImageStrings.sampleImage),
                radius: 28,
              ),
              GenderDropdownWidget(),
              CartCountWidget(),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SearchWidget(),
                const SizedBox(height: 24),
                CategoryItemWidget(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const CategoryListScreen();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                SectionHeader(
                  leftHeader: "Top Selling",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                const ProductListViewCardWidget(),
                const SizedBox(height: 24),
                SectionHeader(
                  leftHeader: "New In",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                const ProductListViewCardWidget(),
                const SizedBox(height: 24)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
