import 'package:flutter/material.dart';

class ServiceRequestScreen extends StatefulWidget {
  const ServiceRequestScreen({super.key});

  @override
  State<ServiceRequestScreen> createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  String? selectedService;

  final TextEditingController detailsController = TextEditingController();

  void submitRequest() {
    if (selectedService == null || detailsController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select a service and enter details."),
        ),
      );

      return;
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        title: const Icon(Icons.check_circle, color: Colors.green, size: 70),

        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Request Submitted",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(
              "Your service request has been submitted successfully.\n\nRequest ID : SR1001",
              textAlign: TextAlign.center,
            ),
          ],
        ),

        actions: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),

              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },

              child: const Text("OK", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget serviceOption(String title) {
    return RadioListTile<String>(
      value: title,

      groupValue: selectedService,

      activeColor: Colors.orange,

      title: Text(title, style: const TextStyle(color: Colors.white)),

      onChanged: (value) {
        setState(() {
          selectedService = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF081B3A),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Service Request",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Select Service",

              style: TextStyle(
                color: Colors.white,

                fontSize: 20,

                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            serviceOption("New Connection"),

            serviceOption("Meter Replacement"),

            serviceOption("Address Change"),

            serviceOption("Load Change"),

            const SizedBox(height: 25),

            const Text(
              "Additional Details",

              style: TextStyle(
                color: Colors.white,

                fontSize: 20,

                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: detailsController,

              maxLines: 5,

              style: const TextStyle(color: Colors.white),

              decoration: InputDecoration(
                hintText: "Enter details about your request...",

                hintStyle: const TextStyle(color: Colors.white54),

                filled: true,

                fillColor: Colors.white10,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 40),

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

                onPressed: submitRequest,

                child: const Text(
                  "Submit Request",

                  style: TextStyle(
                    color: Colors.white,

                    fontWeight: FontWeight.bold,

                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
