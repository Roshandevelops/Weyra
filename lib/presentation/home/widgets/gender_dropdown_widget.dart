import 'package:clot/widgets/app_dropdown_button_widget.dart';
import 'package:flutter/material.dart';

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
        hintText: "Men",
        items: const [
          DropdownMenuItem(
            value: "Men",
            child: Text(
              " Men",
              style: TextStyle(
                  fontFamily: "Gabarito", fontWeight: FontWeight.w700),
            ),
          ),
          DropdownMenuItem(
            value: "Women",
            child: Text(
              " Women",
              style: TextStyle(fontFamily: "Gabarito"),
            ),
          ),
        ],
        onChanged: (Object? value) {
          setState(
            () {
              selectedGender = value as String?;
            },
          );
        },
      ),
    );
  }
}
