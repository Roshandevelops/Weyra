import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key, required this.body, this.appBar, this.showAppBar = true});

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: showAppBar
          ? AppBar(
              leading: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: KAppColors.kFillColor, shape: BoxShape.circle),
                    child: Icon(CupertinoIcons.left_chevron),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
