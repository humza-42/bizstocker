import './stat_card.dart';
import 'package:flutter/material.dart';

class QuickStatsGrid extends StatelessWidget {
  const QuickStatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: const [
        StatCard(title: 'Total Customers', value: '3', color: Colors.blue),
        StatCard(title: 'Total Vendors', value: '4', color: Colors.green),
        StatCard(title: 'Total Products', value: '20', color: Colors.orange),
        StatCard(
          title: "Today's Sales",
          value: 'Rs 131.00',
          color: Colors.purple,
        ),
        StatCard(
          title: "Today's Purchases",
          value: 'Rs 56.00',
          color: Colors.red,
        ),
        StatCard(title: 'Low Stock Items', value: '0', color: Colors.orange),
        StatCard(title: 'Pending Orders', value: '0', color: Colors.blue),
        StatCard(
          title: 'Monthly Purchases',
          value: 'Rs 56.00',
          color: Colors.pink,
        ),
        StatCard(title: 'Sales Orders', value: '6', color: Colors.teal),
        StatCard(
          title: 'Purchase Orders',
          value: '3',
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
