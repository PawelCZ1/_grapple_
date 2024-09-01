// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grapple/helpers/space.dart';
import 'package:grapple/constants/custom_colors.dart';
import 'package:grapple/views/user_profile_stat.dart';
import 'package:grapple/views/user_profile_summary.dart';

class UserProfileInfoPage extends StatelessWidget {
  const UserProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: CustomColors.darkRose,
        ),
        body: ListView(
          children: [
            const VSpace(24),
            Container(
              margin: const EdgeInsets.only(left: 24),
              child: Text(
              "User Profile",
              style: TextStyle(
                fontSize: 36,
                color: CustomColors.darkRose
              ),
              ),
            ),
            const VSpace(24),
            UserProfileSummary(userName: 'Name',),
            const VSpace(40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: CustomColors.darkRose,
                borderRadius: BorderRadius.circular(20)
              ),
              width: double.infinity,
              height: 235,
              child: Column(
                children: [
                  const Text(
                    "Current belt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),
                  const VSpace(12),
                  Container(
                    width: 100.00,
                    height: 100.00,
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/white_belt_icon.png'),
                      fit: BoxFit.fitHeight,
                    )
                    )
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: CustomColors.darkerRose,
                      textStyle: const TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold
                      )
                    ),
                    onPressed: () {},
                    child: const Text('Change'),
                  ),
                ],
              ),
            ),
            const VSpace(40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: CustomColors.darkRose,
                borderRadius: BorderRadius.circular(8)
              ),
              width: double.infinity,
              height: 100,
              child: Column(
                children: [
                  UserProfileStat(name: 'Wins', thisWeekCount: 0, inTotalCount: 0),
                  UserProfileStat(name: 'Loses', thisWeekCount: 0, inTotalCount: 0),              
                  UserProfileStat(name: 'Subs', thisWeekCount: 0, inTotalCount: 0),
                  UserProfileStat(name: 'Taps', thisWeekCount: 0, inTotalCount: 0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

