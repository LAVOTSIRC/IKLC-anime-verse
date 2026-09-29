import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;[cite: 1]
    final screenHeight = MediaQuery.of(context).size.height;[cite: 1]

    return AppScaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.06,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),

            // Profile Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Column(
                children: [
                  // Profile Picture (Static)
                  Container(
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.3),
                        width: 3,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/black_clover.jpg',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.25,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Display Name
                  Text(
                    'IKLC AnimeVerse',
                    style: TextStyle(fontSize: screenWidth * 0.055, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: screenHeight * 0.005),

                  // Email
                  Text(
                    'iklcanimeverse@gmail.com',
                    style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.white70),
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  // Member since
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.008),
                    decoration: BoxDecoration(
                      color: Colors.blue.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    child: Text(
                      'Member since September 2026',
                      style: TextStyle(fontSize: screenWidth * 0.032, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}