import 'package:electricity_billing/view/user/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xff081B3A),
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.orange,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),

            const SizedBox(height: 15),

            const Text(
              "Pranjal Pawar",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Customer ID : CUST102345",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 30),

            profileTile(Icons.phone, "Mobile Number", "9876543210"),

            profileTile(Icons.email, "Email", "pranjalpawar@gmail.com"),

            profileTile(Icons.location_on, "Address", "Shivaji Nagar, Pune"),

            profileTile(Icons.electric_meter, "Meter Number", "MTR564879"),

            profileTile(Icons.flash_on, "Connection Type", "Residential"),

            profileTile(Icons.speed, "Load Capacity", "5 KW"),

            profileTile(Icons.currency_rupee, "Current Bill", "₹4,850"),

            profileTile(Icons.calendar_month, "Due Date", "28 May 2026"),

            profileTile(Icons.check_circle, "Payment Status", "Pending"),

            profileTile(Icons.bar_chart, "Units Consumed", "340 Units"),

            profileTile(Icons.verified_user, "Account Status", "Verified"),

            const SizedBox(height: 30),

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

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfileScreen(),
                    ),
                  );
                },

                child: const Text(
                  "Edit Profile",

                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget profileTile(IconData icon, String title, String value) {
    return Card(
      color: Colors.white10,

      margin: const EdgeInsets.only(bottom: 15),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.orange.withOpacity(.2),
          child: Icon(icon, color: Colors.orange),
        ),

        title: Text(title, style: const TextStyle(color: Colors.white70)),

        subtitle: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
