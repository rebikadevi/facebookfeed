// import 'package:facebook_feed/email_auth/login_pagee.dart';
import 'package:facebookfeed/home_screen.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue
                ),
          ),
          actions: [
            // IconButton(
            //   onPressed: () {},
            //   focusColor: Colors.grey,
            //   icon: Icon(Icons.search),
            //   color: Colors.black,
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.messenger_outline_sharp),
            //   color: Colors.black,
            // ),
            GestureDetector(
                onTap: () {
                  print('Button tapped');
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(96, 166, 166, 166),
                  foregroundColor: Colors.black,
                  child: Icon(Icons.search),
                )),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () {
                  print('Button tapped');
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(96, 166, 166, 166),
                  foregroundColor: Colors.black,
                  child: Icon(Icons.messenger_outline_sharp),
                )),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.ondemand_video),
              ),
              Tab(
                icon: Icon(Icons.notifications_none),
              ),
              Tab(
                icon: Icon(Icons.menu_rounded),
              ),
            ],
          ),
        ),

        // Tab bar View

        body: TabBarView(
          children: [
            // Icon(Icons.home),
            HomeScreen(),
            Icon(Icons.group),
            Icon(Icons.ondemand_video),
            Icon(Icons.notifications_none),
            Icon(Icons.menu_rounded)
          ],
        ),
      ),
    );
  }
}
