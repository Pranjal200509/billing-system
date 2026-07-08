import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController consumerNumberController =
      TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController meterNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();
  String? connectionType;

  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1F44),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),

                child: Container(
                  padding: const EdgeInsets.all(25),

                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(25),

                    border: Border.all(color: Colors.white12),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      // ⚡ Icon
                      Container(
                        padding: const EdgeInsets.all(18),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent.withOpacity(0.4),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),

                        child: const Icon(
                          Icons.person_add,
                          size: 50,
                          color: Colors.orange,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Title
                      const Text(
                        "Create Account",

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Register to continue",

                        style: TextStyle(color: Colors.white70),
                      ),

                      const SizedBox(height: 35),

                      // 👤 Name Field
                      TextField(
                        controller: nameController,

                        style: const TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          hintText: "Full Name",

                          hintStyle: const TextStyle(color: Colors.white54),

                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.orange,
                          ),

                          filled: true,
                          fillColor: Colors.white12,

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 📧 Email Field
                      TextField(
                        controller: emailController,

                        style: const TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          hintText: "Email",

                          hintStyle: const TextStyle(color: Colors.white54),

                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.orange,
                          ),

                          filled: true,
                          fillColor: Colors.white12,

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      TextField(
                        controller: mobileController,
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Mobile Number",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: consumerNumberController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Consumer Number",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.confirmation_number,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      TextField(
                        controller: meterNumberController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Meter Number",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.electric_meter,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                        value: connectionType,

                        dropdownColor: const Color(0xFF0A1F44),

                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),

                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.orange,
                        ),

                        decoration: InputDecoration(
                          hintText: "Connection Type",

                          hintStyle: const TextStyle(color: Colors.white54),

                          prefixIcon: const Icon(
                            Icons.flash_on,
                            color: Colors.orange,
                          ),

                          filled: true,
                          fillColor: Colors.white12,

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),

                        items: const [
                          DropdownMenuItem(
                            value: "Residential",
                            child: Text(
                              "Residential",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "Commercial",
                            child: Text(
                              "Commercial",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "Industrial",
                            child: Text(
                              "Industrial",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                        ],

                        onChanged: (value) {
                          setState(() {
                            connectionType = value;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: addressController,
                        maxLines: 2,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Address",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: cityController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "City",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.location_city,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: stateController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "State",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.map,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      TextField(
                        controller: pinCodeController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "PIN Code",
                          hintStyle: const TextStyle(color: Colors.white54),
                          prefixIcon: const Icon(
                            Icons.pin_drop,
                            color: Colors.orange,
                          ),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 🔒 Password Field
                      TextField(
                        controller: passwordController,
                        obscureText: isPasswordHidden,

                        style: const TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          hintText: "Password",

                          hintStyle: const TextStyle(color: Colors.white54),

                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.orange,
                          ),

                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,

                              color: Colors.orange,
                            ),

                            onPressed: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),

                          filled: true,
                          fillColor: Colors.white12,

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 🔒 Confirm Password
                      TextField(
                        controller: confirmPasswordController,

                        obscureText: isConfirmPasswordHidden,

                        style: const TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          hintText: "Confirm Password",

                          hintStyle: const TextStyle(color: Colors.white54),

                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.orange,
                          ),

                          suffixIcon: IconButton(
                            icon: Icon(
                              isConfirmPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,

                              color: Colors.orange,
                            ),

                            onPressed: () {
                              setState(() {
                                isConfirmPasswordHidden =
                                    !isConfirmPasswordHidden;
                              });
                            },
                          ),

                          filled: true,
                          fillColor: Colors.white12,

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // 🔘 Register Button
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
                            String name = nameController.text.trim();

                            String email = emailController.text.trim();

                            String password = passwordController.text.trim();

                            String confirmPassword = confirmPasswordController
                                .text
                                .trim();

                            if (name.isEmpty ||
                                email.isEmpty ||
                                password.isEmpty ||
                                confirmPassword.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Please fill all fields"),
                                ),
                              );
                            } else if (password != confirmPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Passwords do not match"),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Registration Successful"),
                                ),
                              );

                              Navigator.pop(context);
                            }
                          },

                          child: const Text(
                            "Register",

                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Login Option
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Text(
                            "Already have an account?",

                            style: TextStyle(color: Colors.white70),
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: const Text(
                              "Login",

                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
