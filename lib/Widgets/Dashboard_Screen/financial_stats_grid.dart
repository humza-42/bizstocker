import 'package:biz_stocker/Widgets/Dashboard_Screen/financial_card.dart';
import 'package:flutter/material.dart';

class FinancialStatsGrid extends StatelessWidget {
  const FinancialStatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 1,
      childAspectRatio: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: const [
        FinancialCard(
          title: 'Total Sales',
          value: 'Rs 131.00',
          color: Colors.green,
        ),
        FinancialCard(
          title: 'Total Purchases',
          value: 'Rs 56.00',
          color: Colors.red,
        ),
        FinancialCard(
          title: 'Net Profit',
          value: 'Rs 131.00',
          color: Colors.green,
        ),
        FinancialCard(
          title: 'This Month Sales',
          value: 'Rs 131.00',
          color: Colors.blue,
        ),
        FinancialCard(
          title: 'Stock Value',
          value: 'Rs 0.00',
          color: Colors.orange,
        ),
      ],
    );
  }
}
