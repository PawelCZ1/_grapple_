import 'package:flutter/material.dart';

class UserProfileInfoPage extends StatelessWidget {
  const UserProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 27, 35),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 24, top: 24),
              child: const Text(
              "User Profile",
              style: TextStyle(
                fontSize: 36,
                color: Color.fromARGB(255, 128, 27, 35)
              ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 128, 27, 35),
                borderRadius: BorderRadius.circular(20)
              ),
              width: double.infinity,
              height: 200,
              child: const Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(                     
                        radius: 50,
                        backgroundImage: AssetImage("assets/default_user_profile_image.jpeg"),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        )
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                      SizedBox(height: 48),
                      Text(
                        "Trainings: 0",
                        style: TextStyle(
                          fontSize: 18
                        )
                      )
                    ]
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}