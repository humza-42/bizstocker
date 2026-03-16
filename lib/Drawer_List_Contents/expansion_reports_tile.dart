import 'package:flutter/material.dart';
import 'custom_drawer_tile.dart';
import 'custom_expansion_reports_tile.dart';

class ReportsExpansionTile extends StatefulWidget {
  final String? selectedRoute;
  final ValueChanged<String> onSelect;

  const ReportsExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<ReportsExpansionTile> createState() => _ReportsExpansionTileState();
}

class _ReportsExpansionTileState extends State<ReportsExpansionTile>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main Reports Tile
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: widget.selectedRoute == '/reports'
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: widget.selectedRoute == '/reports'
                ? Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.5),
                  )
                : null,
          ),
          child: ListTile(
            leading: Icon(
              Icons.bar_chart,
              color: widget.selectedRoute == '/reports'
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/reports');
              },
              child: Text(
                'Reports',
                style: TextStyle(
                  color: widget.selectedRoute == '/reports'
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: widget.selectedRoute == '/reports'
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 14.0,
                ),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.grey,
              ),
              onPressed: _toggleExpanded,
            ),
            selected: widget.selectedRoute == '/reports',
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/reports');
            },
          ),
        ),
        // Reports Children
        if (_isExpanded)
          SizeTransition(
            sizeFactor: _controller,
            axisAlignment: -1.0,
            child: Column(
              children: [
                // Production Report
                CustomDrawerTile(
                  title: 'Production Report',
                  icon: Icons.factory,
                  route: '/production_report',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                ),
                // Operational Reports
                CustomExpansionReportsTile(
                  title: 'Operational Reports',
                  icon: Icons.business,
                  route: '/operational_reports',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                  children: [
                    CustomDrawerTile(
                      title: 'Vendors Insights',
                      icon: Icons.store,
                      route: '/vendors_insights',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Customer Balances',
                      icon: Icons.payment,
                      route: '/customer_balances',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Customer Insights',
                      icon: Icons.people,
                      route: '/customer_insights',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Products Insights',
                      icon: Icons.inventory_2,
                      route: '/products_insights',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Top-Selling Products',
                      icon: Icons.trending_up,
                      route: '/top_selling_products',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                  ],
                ),
                // Financial Statements
                CustomExpansionReportsTile(
                  title: 'Financial Statements',
                  icon: Icons.account_balance_wallet,
                  route: '/financial_statements',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                  children: [
                    CustomDrawerTile(
                      title: 'Income Statement',
                      icon: Icons.trending_up,
                      route: '/income_statement',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Balance Sheet',
                      icon: Icons.account_balance,
                      route: '/balance_sheet',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Cash Flow Statement',
                      icon: Icons.monetization_on,
                      route: '/cash_flow_statement',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Trial Balance',
                      icon: Icons.receipt_long,
                      route: '/trial_balance',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                  ],
                ),
                // Analysis Reports
                CustomExpansionReportsTile(
                  title: 'Analysis Reports',
                  icon: Icons.analytics,
                  route: '/analysis_reports',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                  children: [
                    CustomDrawerTile(
                      title: 'Monthly P&L Summary',
                      icon: Icons.show_chart,
                      route: '/monthly_pnl_summary',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Comparative P&L',
                      icon: Icons.compare_arrows,
                      route: '/comparative_pnl',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Business Analysis',
                      icon: Icons.business,
                      route: '/business_analysis',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Expense Analysis',
                      icon: Icons.money_off,
                      route: '/expense_analysis',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Sales Analysis',
                      icon: Icons.shopping_cart,
                      route: '/sales_analysis',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Purchase Analysis',
                      icon: Icons.shopping_bag,
                      route: '/purchase_analysis',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Gross Profit Margin',
                      icon: Icons.trending_up,
                      route: '/gross_profit_margin',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Inventory Valuation',
                      icon: Icons.inventory_2,
                      route: '/inventory_valuation',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                  ],
                ),
                // Ledger & Accounts
                CustomExpansionReportsTile(
                  title: 'Ledger & Accounts',
                  icon: Icons.book,
                  route: '/ledger_accounts',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                  children: [
                    CustomDrawerTile(
                      title: 'General Ledger',
                      icon: Icons.account_balance,
                      route: '/general_ledger',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Journal Entries',
                      icon: Icons.receipt_long,
                      route: '/journal_entries',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Chart of Accounts',
                      icon: Icons.account_tree,
                      route: '/chart_of_accounts',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                  ],
                ),
                // Aging Reports
                CustomExpansionReportsTile(
                  title: 'Aging Reports',
                  icon: Icons.timer,
                  route: '/aging_reports',
                  selectedRoute: widget.selectedRoute,
                  onSelect: widget.onSelect,
                  indentationLevel: 1,
                  children: [
                    CustomDrawerTile(
                      title: 'Accounts Receivable Aging',
                      icon: Icons.money_outlined,
                      route: '/accounts_receivable_aging',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                    CustomDrawerTile(
                      title: 'Accounts Payable Aging',
                      icon: Icons.money,
                      route: '/accounts_payable_aging',
                      selectedRoute: widget.selectedRoute,
                      onSelect: widget.onSelect,
                      indentationLevel: 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
