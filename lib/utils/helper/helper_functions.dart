import 'package:flutter/material.dart';

class KHelperFunctions {
  static Color? getColor(String value) {
    /// Define the product specific colors here and it will match the attributes colors and show specific
    if (value == "Green") {
      return Colors.green;
    } else if (value == "Green") {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } else {
      return null;
    }
  }

  static void showSanckBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAllert(String title, String message, BuildContext content) {
    showDialog(
      context: content,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                return Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static String trunCateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
