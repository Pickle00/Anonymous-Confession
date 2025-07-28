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
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationCard(
                title: 'This is a tite',
                preview: 'This is preview',
                university: 'MIT',
                timeAgo: '3h ago'),
          ],
        ),
      ),
    );
  }
}
