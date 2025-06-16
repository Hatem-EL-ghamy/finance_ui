import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/my_profile/widget/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black87),
        centerTitle: true,
        title: Text(
          'My Profile',
          style: AppStyles.black15BoldStyle,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.edit_outlined, color: Colors.black87),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/Screenshot 2025-05-18 122303.png', // صورة مؤقتة
              ),
            ),
            SizedBox(height: 24),
            ProfileItem(title: "Full Name", value: "Hatem Nasser"),
            ProfileItem(title: "Email", value: "hatemn480@gmail.com"),
            ProfileItem(title: "Phone Number", value: "01271964322"),
            ProfileItem(title: "Address", value: "Cairo, Egypt"),
          ],
        ),
      ),
    );
  }
}
