import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List<Map<String, dynamic>> notifications = [
    {
      "title": "Bill Generated",
      "subtitle": "Your electricity bill for July has been generated.",
      "time": "Today",
      "icon": Icons.receipt_long,
      "color": Colors.green,
      "unread": true,
    },
    {
      "title": "Payment Successful",
      "subtitle": "₹1,250 has been paid successfully.",
      "time": "Yesterday",
      "icon": Icons.check_circle,
      "color": Colors.green,
      "unread": false,
    },
    {
      "title": "Due Date Reminder",
      "subtitle": "Pay before 10 July to avoid late payment charges.",
      "time": "2 Days Ago",
      "icon": Icons.warning_amber_rounded,
      "color": Colors.orange,
      "unread": true,
    },
    {
      "title": "Power Supply Notice",
      "subtitle": "Scheduled maintenance on 8 July from 10:00 AM to 1:00 PM.",
      "time": "3 Days Ago",
      "icon": Icons.electric_bolt,
      "color": Colors.blue,
      "unread": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF081B3A),
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xFF10284F),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: item["color"].withOpacity(0.2),
                  child: Icon(item["icon"], color: item["color"], size: 28),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        item["subtitle"],
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        item["time"],
                        style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                if (item["unread"])
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
