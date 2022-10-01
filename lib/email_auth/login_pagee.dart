// ignore_for_file: avoid_print

import 'package:auth_handler/auth_handler.dart';
import 'package:facebookfeed/email_auth/demo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  // AuthHandler authHandler = AuthHandler();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  AuthHandler authHandler = AuthHandler();

  @override
  void initState() {
    authHandler.config();
    super.initState();
  }

  void sendOTP() async {
    // EmailAuth(sessionName: "Fb");
    var res = await authHandler.sendOtp(
      _emailController.text,
    );
    if (res) {
      // ignore: avoid_print
      print("otp send");
    } else {
      print("we could not send otp");
    }
  }

  void verifyOTP() async {
    var res = await authHandler.verifyOtp(_otpController.text);
    if (res) {
      // await Demo();
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Demo()));
      print("object");
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Verify Email"),
      ),
      body: Column(
        children: [
          // Image.network(
          //   "https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          //   fit: BoxFit.cover,
          // ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    labelText: "Email",
                    suffixIcon: TextButton(
                      child: const Text("Send OTP"),
                      onPressed: () => sendOTP(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter OTP",
                    labelText: "OTP",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () => verifyOTP(),
                    child: const Text("Verify OTP"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
