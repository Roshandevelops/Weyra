import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Details'),
      ),
      body: const Center(
        child: Text('Details of the selected category will be shown here.'),
      ),
    );
  }
}
