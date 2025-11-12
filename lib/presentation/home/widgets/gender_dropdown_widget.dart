import 'package:clot/widgets/app_dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GenderDropdownWidget extends StatefulWidget {
  const GenderDropdownWidget({super.key});

  @override
  State<GenderDropdownWidget> createState() => _GenderDropdownWidgetState();
}

class _GenderDropdownWidgetState extends State<GenderDropdownWidget> {
  String? selectedGender = "Men";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: AppDropdownButtonWidget(
        borderRadius: BorderRadius.circular(10),
        icon: const Icon(
          Iconsax.arrow_down_1,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        hintText: "Men",
        items: const [
          DropdownMenuItem(
            value: "Men",
            child: Text(
              " Men",
              style: TextStyle(
                fontFamily: "Gabarito",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          DropdownMenuItem(
            value: "Women",
            child: Text(
              " Women",
              style: TextStyle(
                fontFamily: "Gabarito",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
        onChanged: (Object? value) {
          setState(
            () {
              selectedGender = value.toString();
            },
          );
        },
      ),
    );
  }
}
