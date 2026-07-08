import 'package:electricity_billing/view/user/home_screen.dart';
import 'package:flutter/material.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF081B3A),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bills History",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
              (route) => false,
            );
          },
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          BillCard(
            month: "June 2026",
            amount: "₹4,850",
            status: "Pending",
            statusColor: Colors.orange,
          ),

          SizedBox(height: 18),

          BillCard(
            month: "May 2026",
            amount: "₹3,200",
            status: "Paid",
            statusColor: Colors.green,
          ),

          SizedBox(height: 18),

          BillCard(
            month: "April 2026",
            amount: "₹2,900",
            status: "Paid",
            statusColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class BillCard extends StatelessWidget {
  final String month;
  final String amount;
  final String status;
  final Color statusColor;

  const BillCard({
    super.key,
    required this.month,
    required this.amount,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: statusColor.withOpacity(0.2),
            child: Icon(
              status == "Paid" ? Icons.check_circle : Icons.receipt_long,
              color: statusColor,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  month,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  amount,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
