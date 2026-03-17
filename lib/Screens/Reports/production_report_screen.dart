import 'package:flutter/material.dart';
import '../../Widgets/custom_drawer.dart';
import '../../Widgets/reports/production_report_card.dart';

class ProductionReportScreen extends StatelessWidget {
  const ProductionReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(currentRoute: '/production_report'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Production Report'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: Theme.of(context).colorScheme.surfaceContainer,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Production Report',
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
