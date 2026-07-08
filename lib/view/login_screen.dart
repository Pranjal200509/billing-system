import 'package:electricity_billing/view/forgot_password.dart';
import 'package:electricity_billing/view/user/home_screen.dart';
import 'package:electricity_billing/view/register%20screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  // Hardcoded Credentials
  final String fixedEmail = "admin@gmail.com";
  final String fixedPassword = "12345";

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
                          Icons.electric_bolt,
                          size: 50,
                          color: Colors.orange,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Title
                      const Text(
                        "Welcome Back",

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Login to continue",

                        style: TextStyle(color: Colors.white70),
                      ),

                      const SizedBox(height: 35),

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

                      const SizedBox(height: 10),

                      // Forgot Password
                      Align(
                        alignment: Alignment.centerRight,

                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen(),
                              ),
                            );
                          },

                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 🔘 Login Button
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
                            String email = emailController.text.trim();

                            String password = passwordController.text.trim();

                            if (email == fixedEmail &&
                                password == fixedPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Login Successful"),
                                ),
                              );

                              // Navigate to Home Screen
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid Email or Password"),
                                ),
                              );
                            }
                          },

                          child: const Text(
                            "Login",

                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Register Option
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Text(
                            "Don't have an account?",

                            style: TextStyle(color: Colors.white70),
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },

                            child: const Text(
                              "Register",

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
