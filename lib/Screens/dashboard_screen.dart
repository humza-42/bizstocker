import '../Widgets/Dashboard_Screen/financial_stats_grid.dart';
import '../Widgets/Dashboard_Screen/quick_stats_grid.dart';
import '../Widgets/Dashboard_Screen/welcome_card.dart';
import '../Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: const Text(
              'Dashboard',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        // backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        // foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
        // backgroundColor: primaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeCard(),
              const SizedBox(height: 24.0),
              const QuickStatsGrid(),
              const SizedBox(height: 24.0),
              const FinancialStatsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
