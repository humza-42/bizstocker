import 'package:flutter/material.dart';
import '../../../Widgets/custom_drawer.dart';
import '../../../Widgets/Reports/production_report_card.dart';

class TopSellingProductsScreen extends StatelessWidget {
  const TopSellingProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(currentRoute: '/top_selling_products'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Top-Selling Products'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).colorScheme.surfaceContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top-Selling Products',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16.0),
                const ProductionReportCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
