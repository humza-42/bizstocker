import 'package:biz_stocker/Screens/Sales/sales_screen.dart';
import 'package:biz_stocker/Screens/Sales/orders_screen.dart' as sales_orders;
import 'package:biz_stocker/Screens/Sales/customers_screen.dart';
import 'package:biz_stocker/Screens/Sales/returns_screen.dart' as sales_returns;

import 'Screens/dashboard_screen.dart';
import 'Screens/Purchases/purchase_screen.dart';
import 'Screens/Purchases/orders_screen.dart' as purchase_orders;
import 'Screens/Purchases/returns_screen.dart' as purchase_returns;
import 'Screens/Purchases/vendors_screen.dart';
import 'Screens/Manufacturing/manufacturing_screen.dart';
import 'Screens/Manufacturing/productions_screen.dart';
import 'Screens/Manufacturing/products_screen.dart';
import 'Screens/Manufacturing/bom_screen.dart';
import 'Screens/Transactions/transaction_screen.dart';
import 'Screens/Transactions/transaction_purchase_screen.dart';
import 'Screens/Transactions/transaction_sales_screen.dart';
import 'Screens/Transactions/transaction_sales_return_screen.dart';
import 'Screens/Transactions/transaction_purchase_return_screen.dart';
import 'Screens/Transactions/transaction_capital_investment_screen.dart';
import 'Screens/Expenses/expenses_screen.dart';
import 'Screens/Expenses/all_expenses_screen.dart';
import 'Screens/Expenses/general_expenses_screen.dart';
import 'Screens/Expenses/manage_expense_groups_screen.dart';
import 'Screens/Reports/production_report_screen.dart';
import 'Screens/Reports/Operational_Reports/vendors_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/customer_balances_screen.dart';
import 'Screens/Reports/Operational_Reports/customer_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/products_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/top_selling_products_screen.dart';

import 'SplashScreen/splash_screen.dart';
import 'theme/color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BizStockersdsads',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        // '/purchases': (context) => const PurchaseScreen(),
        '/purchase_orders': (context) => const purchase_orders.OrdersScreen(),
        '/purchase_returns': (context) =>
            const purchase_returns.ReturnsScreen(),
        '/vendors': (context) => const VendorsScreen(),
        // '/manufacturing': (context) => const ManufacturingScreen(),
        '/productions': (context) => const ProductionsScreen(),
        '/products': (context) => const ProductsScreen(),
        '/bom': (context) => const BomScreen(),
        // '/sales_screen': (context) => const SalesScreen(),
        '/sales_orders': (context) => const sales_orders.OrdersScreen(),
        '/sales_customers': (context) => const CustomersScreen(),
        '/sales_returns': (context) => const sales_returns.ReturnsScreen(),
        // '/transactions_screen': (context) => const TransactionScreen(),
        '/transaction_purchase': (context) => const TransactionPurchaseScreen(),
        '/transaction_sales': (context) => const TransactionSalesScreen(),
        '/transaction_sales_return': (context) =>
            const TransactionSalesReturnScreen(),
        '/transaction_purchase_return': (context) =>
            const TransactionPurchaseReturnScreen(),
        '/transaction_capital_investment': (context) =>
            const TransactionCapitalInvestmentScreen(),
        // '/expenses_screen': (context) => const ExpensesScreen(),
        '/all_expenses_screen': (context) => const AllExpensesScreen(),
        '/general_expenses_screen': (context) => const GeneralExpensesScreen(),
        '/manage_expense_groups_screen': (context) =>
            const ManageExpenseGroupsScreen(),
        '/production_report': (context) => const ProductionReportScreen(),
        '/vendors_insights': (context) => const VendorsInsightsScreen(),
        '/customer_balances': (context) => const CustomerBalancesScreen(),
        '/customer_insights': (context) => const CustomerInsightsScreen(),
        '/products_insights': (context) => const ProductsInsightsScreen(),
        '/top_selling_products': (context) => const TopSellingProductsScreen(),
      },
    );
  }
}
