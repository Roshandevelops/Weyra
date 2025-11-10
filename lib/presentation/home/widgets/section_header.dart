import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.leftHeader,
    required this.onTap,
  });
  final String leftHeader;
  final void Function()? onTap;

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
        InkWell(
          onTap: onTap,
          child: const Text("See All"),
        ),
      ],
    );
  }
}
