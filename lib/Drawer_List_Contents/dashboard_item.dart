import 'package:biz_stocker/Screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.dashboard, color: Colors.grey),
      title: const Text('Dashboard'),
      onTap: () {
        Navigator.of(context).pop(); // Close the drawer
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()),
        );
      },
    );
  }
}
