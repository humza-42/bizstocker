import 'package:biz_stocker/Screens/Sales/orders_screen.dart' as sales_orders;
import 'package:biz_stocker/Screens/Sales/customers_screen.dart';
import 'package:biz_stocker/Screens/Sales/returns_screen.dart' as sales_returns;

import 'Screens/dashboard_screen.dart';
import 'Screens/Settings/settings_screen.dart';
import 'Screens/Settings/company_screen.dart';
import 'Screens/Settings/users_screen.dart';
import 'Screens/Settings/groups_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/profile_screen.dart';

import 'Screens/Purchases/orders_screen.dart' as purchase_orders;
import 'Screens/Purchases/returns_screen.dart' as purchase_returns;
import 'Screens/Purchases/vendors_screen.dart';

import 'Screens/Manufacturing/productions_screen.dart';
import 'Screens/Manufacturing/products_screen.dart';
import 'Screens/Manufacturing/bom_screen.dart';

import 'Screens/Transactions/transaction_purchase_screen.dart';
import 'Screens/Transactions/transaction_sales_screen.dart';
import 'Screens/Transactions/transaction_sales_return_screen.dart';
import 'Screens/Transactions/transaction_purchase_return_screen.dart';
import 'Screens/Transactions/transaction_capital_investment_screen.dart';

import 'Screens/Expenses/all_expenses_screen.dart';
import 'Screens/Expenses/general_expenses_screen.dart';
import 'Screens/Expenses/manage_expense_groups_screen.dart';
import 'Screens/Reports/production_report_screen.dart';
import 'Screens/Reports/Operational_Reports/vendors_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/customer_balances_screen.dart';
import 'Screens/Reports/Operational_Reports/customer_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/products_insights_screen.dart';
import 'Screens/Reports/Operational_Reports/top_selling_products_screen.dart';
import 'Screens/Reports/Financial_Reports/income_statement_screen.dart';
import 'Screens/Reports/Financial_Reports/balance_sheet_screen.dart';
import 'Screens/Reports/Financial_Reports/cash_flow_statement_screen.dart';
import 'Screens/Reports/Financial_Reports/trial_balance_screen.dart';
import 'Screens/Reports/Analysis_Reports/monthly_pnl_summary_screen.dart';
import 'Screens/Reports/Analysis_Reports/comparative_pnl_screen.dart';
import 'Screens/Reports/Analysis_Reports/business_analysis_screen.dart';
import 'Screens/Reports/Analysis_Reports/expense_analysis_screen.dart';
import 'Screens/Reports/Analysis_Reports/sales_analysis_screen.dart';
import 'Screens/Reports/Analysis_Reports/purchase_analysis_screen.dart';
import 'Screens/Reports/Analysis_Reports/gross_profit_margin_screen.dart';
import 'Screens/Reports/Analysis_Reports/inventory_valuation_screen.dart';
import 'Screens/Reports/Ledger_Accounts/general_ledger_screen.dart';
import 'Screens/Reports/Ledger_Accounts/journal_entries_screen.dart';
import 'Screens/Reports/Ledger_Accounts/chart_of_accounts_screen.dart';
import 'Screens/Reports/aging_reports/accounts_receivable_aging_screen.dart';
import 'Screens/Reports/aging_reports/accounts_payable_aging_screen.dart';

import 'SplashScreen/splash_screen.dart';
import 'theme/color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeMode themeMode;
  final Function() toggleTheme;

  const ThemeProvider({
    super.key,
    required this.themeMode,
    required this.toggleTheme,
    required super.child,
  });

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeMode: _themeMode,
      toggleTheme: toggleTheme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BizStockersdsads',
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: _themeMode,

        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/dashboard': (context) {
            final args =
                ModalRoute.of(context)!.settings.arguments as UserData?;
            return DashboardScreen(userData: args);
          },
          '/purchase_orders': (context) => const purchase_orders.OrdersScreen(),
          '/purchase_returns': (context) =>
              const purchase_returns.ReturnsScreen(),
          '/vendors': (context) => const VendorsScreen(),
          '/productions': (context) => const ProductionsScreen(),
          '/products': (context) => const ProductsScreen(),
          '/bom': (context) => const BomScreen(),
          '/sales_orders': (context) => const sales_orders.OrdersScreen(),
          '/sales_customers': (context) => const CustomersScreen(),
          '/sales_returns': (context) => const sales_returns.ReturnsScreen(),
          '/transaction_purchase': (context) =>
              const TransactionPurchaseScreen(),
          '/transaction_sales': (context) => const TransactionSalesScreen(),
          '/transaction_sales_return': (context) =>
              const TransactionSalesReturnScreen(),
          '/transaction_purchase_return': (context) =>
              const TransactionPurchaseReturnScreen(),
          '/transaction_capital_investment': (context) =>
              const TransactionCapitalInvestmentScreen(),
          '/all_expenses_screen': (context) => const AllExpensesScreen(),
          '/general_expenses_screen': (context) =>
              const GeneralExpensesScreen(),
          '/manage_expense_groups_screen': (context) =>
              const ManageExpenseGroupsScreen(),
          '/production_report': (context) => const ProductionReportScreen(),
          '/vendors_insights': (context) => const VendorsInsightsScreen(),
          '/customer_balances': (context) => const CustomerBalancesScreen(),
          '/customer_insights': (context) => const CustomerInsightsScreen(),
          '/products_insights': (context) => const ProductsInsightsScreen(),
          '/top_selling_products': (context) =>
              const TopSellingProductsScreen(),
          '/income_statement': (context) => const IncomeStatementScreen(),
          '/balance_sheet': (context) => const BalanceSheetScreen(),
          '/cash_flow_statement': (context) => const CashFlowStatementScreen(),
          '/trial_balance': (context) => const TrialBalanceScreen(),
          '/monthly_pnl_summary': (context) => const MonthlyPnlSummaryScreen(),
          '/comparative_pnl': (context) => const ComparativePnlScreen(),
          '/business_analysis': (context) => const BusinessAnalysisScreen(),
          '/expense_analysis': (context) => const ExpenseAnalysisScreen(),
          '/sales_analysis': (context) => const SalesAnalysisScreen(),
          '/purchase_analysis': (context) => const PurchaseAnalysisScreen(),
          '/gross_profit_margin': (context) => const GrossProfitMarginScreen(),
          '/inventory_valuation': (context) => const InventoryValuationScreen(),
          '/general_ledger': (context) => const GeneralLedgerScreen(),
          '/journal_entries': (context) => const JournalEntriesScreen(),
          '/chart_of_accounts': (context) => const ChartOfAccountsScreen(),
          '/accounts_receivable_aging': (context) =>
              const AccountsReceivableAgingScreen(),
          '/accounts_payable_aging': (context) =>
              const AccountsPayableAgingScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/settings_company': (context) => const CompanyScreen(),
          '/settings_users': (context) => const UsersScreen(),
          '/settings_groups': (context) => const GroupsScreen(),
          '/profile': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
