import 'package:flutter/material.dart';
import '../../../Widgets/custom_drawer.dart';
import '../../../Widgets/reports/production_report_card.dart';

class AccountsPayableAgingScreen extends StatelessWidget {
  const AccountsPayableAgingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(currentRoute: '/accounts_payable_aging'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Accounts Payable Aging'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Accounts Payable Aging',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16.0),
              const ProductionReportCard(),
            ],
          ),
        ),
      ),
    );
  }
}
