import 'package:flutter/material.dart';
import 'package:grapple/pages/user_profile_info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserProfileInfoPage();
  }
}