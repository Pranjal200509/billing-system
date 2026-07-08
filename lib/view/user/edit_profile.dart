import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController nameController = TextEditingController(
    text: "Pranjal Pawar",
  );

  final TextEditingController emailController = TextEditingController(
    text: "pranjalpawar@gmail.com",
  );

  final TextEditingController phoneController = TextEditingController(
    text: "9876543210",
  );

  final TextEditingController addressController = TextEditingController(
    text: "Shivaji Nagar, Pune",
  );

  final TextEditingController meterController = TextEditingController(
    text: "MTR564879",
  );

  final TextEditingController consumerController = TextEditingController(
    text: "987654321012",
  );

  final TextEditingController loadController = TextEditingController(
    text: "5 KW",
  );

  final TextEditingController connectionController = TextEditingController(
    text: "Residential",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xff081B3A),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.orange,
              child: Icon(Icons.person, color: Colors.white, size: 55),
            ),

            const SizedBox(height: 15),

            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text("Change Photo"),
            ),

            const SizedBox(height: 20),

            buildField("Full Name", Icons.person, nameController),

            buildField("Email", Icons.email, emailController),

            buildField("Phone Number", Icons.phone, phoneController),

            buildField("Address", Icons.location_on, addressController),

            buildField("Meter Number", Icons.electric_meter, meterController),

            buildField(
              "Consumer Number",
              Icons.confirmation_number,
              consumerController,
            ),

            buildField("Load Capacity", Icons.flash_on, loadController),

            buildField("Connection Type", Icons.power, connectionController),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      minimumSize: const Size.fromHeight(55),
                    ),

                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Backend will be connected later."),
                        ),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size.fromHeight(55),
                    ),

                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildField(
    String label,
    IconData icon,
    TextEditingController controller,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),

      child: TextField(
        controller: controller,

        style: const TextStyle(color: Colors.white),

        decoration: InputDecoration(
          labelText: label,

          labelStyle: const TextStyle(color: Colors.white70),

          prefixIcon: Icon(icon, color: Colors.orange),

          filled: true,
          fillColor: Colors.white10,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white24),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
