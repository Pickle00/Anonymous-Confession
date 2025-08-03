import 'package:confesso/screens/notification/widget/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationCard(
              authorName: 'Study Buddy',
              authorTag: 'HELPER',
              authorTagColor: Colors.green,
              timeAgo: '2h ago',
              mainComment:
                  "Does anyone have tips for managing time during finals?",
              onMarkAsRead: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Marked as read')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
