import 'package:clot/presentation/notification_screen/ui/notification_list_screen.dart';
import 'package:clot/utils/constants/image_strings.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontFamily: "gabarito",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                KImageStrings.bellImage,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 24),
              Text(
                'No Notification Yet',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 200,
                child: AppButtonWidget(
                  buttonText: "Explore Categories",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const NotificationListScreen();
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
