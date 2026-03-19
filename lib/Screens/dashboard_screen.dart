import '../Widgets/Dashboard_Screen/financial_stats_grid.dart';
import '../Widgets/Dashboard_Screen/quick_stats_grid.dart';
import '../Widgets/Dashboard_Screen/welcome_card.dart';
import '../Widgets/custom_drawer.dart';
import 'login_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final UserData? userData;

  const DashboardScreen({super.key, this.userData});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Prevent app from closing when back button is pressed
        return false;
      },
      child: Scaffold(
        drawer: CustomDrawer(
          currentRoute: '/dashboard',
          userData: widget.userData,
        ),
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: const Text('Dashboard'),
            ),
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeCard(userData: widget.userData),
                const SizedBox(height: 24.0),
                const QuickStatsGrid(),
                const SizedBox(height: 24.0),
                const FinancialStatsGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
