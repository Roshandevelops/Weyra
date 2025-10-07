import 'package:clot/presentation/home/widgets/category_widget.dart';
import 'package:clot/presentation/home/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 50,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://bellard.org/bpg/2.png"),
                radius: 25,
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Men",
                      style: TextStyle(fontFamily: "Gabarito"),
                    ),
                  )
                ],
                onChanged: (value) {},
              ),
              CircleAvatar(
                radius: 25,
                child: IconButton(
                  icon: const Icon(Icons.shop_two_outlined),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 20),
              SearchWidget(),
              SizedBox(height: 20),
              CategoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
