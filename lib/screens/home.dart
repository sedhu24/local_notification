import 'package:flutter/material.dart';
import 'package:storeproject/controllers/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices _notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();

    _notificationServices.startnotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Notification")),
      body: SizedBox(
        height: double.infinity,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _notificationServices.sendNotification(
                    "FLutter Notification", "Flutter Notification Works Fine ");
              },
              child: const Text("Send Notification"),
            ),
            ElevatedButton(
                onPressed: () {
                  _notificationServices.scheduleNotification(
                      "FLutter Notification Schedule",
                      "Flutter Notification Works Fine periodicaly");
                },
                child: const Text("Schedule notification")),
            ElevatedButton(
                onPressed: () {
                  _notificationServices.stopNotificatioin();
                },
                child: const Text("Stop Notification")),
          ],
        ),
      ),
    );
    ;
  }
}
