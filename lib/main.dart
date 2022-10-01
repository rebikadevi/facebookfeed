import 'package:facebookfeed/email_auth/demo.dart';
import 'package:facebookfeed/email_auth/login_pagee.dart';
// import 'package:facebook_feed/email_auth/login_pagee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// void main() => runApp(const MaterialApp(home: LoginPage()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demoooo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Demo(),
      home: const LoginPage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }

// // Our Home Page
// class HomePageState extends State<HomePage> {
//   final inputController = TextEditingController();

//   // 1️⃣ TODO: Initialize Cotter
//   // 2️⃣ TODO: Make Sign Up & Login Function

//   // This is a helper function that shows the response
//   // from our Sign Up and Login functions.
//   _showResponse(BuildContext context, String title, String content) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(title),
//         content: Text(content),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Welcome Titles
//             Text("🦊", style: TextStyle(fontSize: 50)),
//             Text("Welcome.",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),

//             // Email Input Form
//             Form(
//               child: TextField(
//                 decoration: InputDecoration(labelText: "Email"),
//                 controller: inputController,
//               ),
//             ),

//             // Sign In Button
//             MaterialButton(
//               onPressed: () {},
//               color: Colors.deepPurpleAccent,
//               textColor: Colors.white,
//               child: Text("Sign In With Email"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:auth_handler/auth_handler.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const MaterialApp(home: Home()));

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController otpController = TextEditingController();
//   AuthHandler authHandler = AuthHandler();
//   @override
//   void initState() {
//     // authHandler.config();
//     authHandler.config(
//       senderEmail: "facebook@service.com",
//       senderName: "facebook",
//       otpLength: 6,
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Auth Handler')),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             TextFormField(controller: emailController),
//             ElevatedButton(
//               onPressed: () => authHandler.sendOtp(emailController.text),
//               child: const Text('Send OTP'),
//             ),
//             TextFormField(controller: otpController),
//             ElevatedButton(
//               onPressed: () => authHandler.verifyOtp(otpController.text),
//               child: const Text('Verify OTP'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
