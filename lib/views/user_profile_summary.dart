import 'package:flutter/material.dart';
import 'package:grapple/constants/custom_colors.dart';
import 'package:grapple/helpers/space.dart';

class UserProfileSummary extends StatelessWidget {
  const UserProfileSummary({
    super.key,
    required this.userName
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: CustomColors.darkRose,
        borderRadius: BorderRadius.circular(20)
      ),
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          const Column(
            children: [
              CircleAvatar(                     
                radius: 50,
                backgroundImage: AssetImage("assets/default_user_profile_image.jpeg"),
              ),
              VSpace(24),
              Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                )
              )
            ],
          ),
          const HSpace(24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 18
                )
              ),
              const VSpace(48),
              const Text(
                "Trainings: 0",
                style: TextStyle(
                  fontSize: 18
                )
              )
            ]
          )
        ],
      )
    );
  }
}

