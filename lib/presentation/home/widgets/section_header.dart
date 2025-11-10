import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.leftHeader,
  });
  final String leftHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftHeader,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Gabarito",
          ),
        ),
        const Text("See All"),
      ],
    );
  }
}
