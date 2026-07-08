import 'dart:async';
import 'package:flutter/material.dart';

class PayBillScreen extends StatefulWidget {
  const PayBillScreen({super.key});

  @override
  State<PayBillScreen> createState() => _PayBillScreenState();
}

class _PayBillScreenState extends State<PayBillScreen> {
  String paymentMethod = "UPI";
  bool isLoading = false;

  void payBill() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Icon(Icons.check_circle, color: Colors.green, size: 70),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Payment Successful",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Text(
                "₹4,850 has been paid successfully.",
                textAlign: TextAlign.center,
              ),
            ],
          ),

          actions: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text("OK", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget paymentOption(String value) {
    return RadioListTile(
      value: value,
      groupValue: paymentMethod,

      activeColor: Colors.orange,

      title: Text(value, style: const TextStyle(color: Colors.white)),

      onChanged: (val) {
        setState(() {
          paymentMethod = val!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xff081B3A),

        elevation: 0,

        title: const Text("Pay Bill"),

        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white10,

                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text(
                    "Current Bill",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "₹4,850",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Divider(color: Colors.white24),

                  const SizedBox(height: 10),

                  infoTile("Consumer Number", "EB202600125"),

                  const SizedBox(height: 15),

                  infoTile("Due Date", "28 July 2026"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Payment Method",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            paymentOption("UPI"),

            paymentOption("Card"),

            paymentOption("Net Banking"),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                onPressed: isLoading ? null : payBill,

                child: isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        "Pay Now",

                        style: TextStyle(
                          color: Colors.white,

                          fontSize: 18,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget infoTile(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
