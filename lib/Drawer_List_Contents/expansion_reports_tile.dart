import 'package:flutter/material.dart';

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
  bool _isOperationalExpanded = false;
  bool _isFinancialStatementsExpanded = false;
  late AnimationController _controller;
  late AnimationController _operationalController;
  late AnimationController _financialController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _operationalController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _financialController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _operationalController.dispose();
    _financialController.dispose();
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

  void _toggleOperationalExpanded() {
    setState(() {
      _isOperationalExpanded = !_isOperationalExpanded;
      if (_isOperationalExpanded) {
        _operationalController.forward();
      } else {
        _operationalController.reverse();
      }
    });
  }

  void _toggleFinancialExpanded() {
    setState(() {
      _isFinancialStatementsExpanded = !_isFinancialStatementsExpanded;
      if (_isFinancialStatementsExpanded) {
        _financialController.forward();
      } else {
        _financialController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isReportsSelected = widget.selectedRoute == '/reports';
    bool isProductionReportSelected =
        widget.selectedRoute == '/production_report';
    bool isOperationalReportsSelected =
        widget.selectedRoute == '/operational_reports';
    bool isFinancialStatementsSelected =
        widget.selectedRoute == '/financial_statements';
    bool isAnalysisReportsSelected =
        widget.selectedRoute == '/analysis_reports';
    bool isLedgerAccountsSelected = widget.selectedRoute == '/ledger_accounts';
    bool isAgingReportsSelected = widget.selectedRoute == '/aging_reports';

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: isReportsSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isReportsSelected
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
              color: isReportsSelected
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
                  color: isReportsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isReportsSelected
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
            selected: isReportsSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/reports');
            },
          ),
        ),
        // Production Report
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isProductionReportSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isProductionReportSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.factory,
                color: isProductionReportSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Production Report',
                style: TextStyle(
                  color: isProductionReportSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isProductionReportSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isProductionReportSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/production_report');
                Navigator.pushNamed(context, '/production_report');
              },
            ),
          ),
        ),
        // Operational Reports
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isOperationalReportsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isOperationalReportsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.business,
                color: isOperationalReportsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Operational Reports',
                style: TextStyle(
                  color: isOperationalReportsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isOperationalReportsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isOperationalReportsSelected,
              selectedTileColor: Colors.transparent,
              trailing: Icon(
                _isOperationalExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.grey,
                size: 16,
              ),
              onTap: _toggleOperationalExpanded,
            ),
          ),
        ),
        // Operational Reports Children
        if (_isOperationalExpanded)
          Column(
            children: [
              SizeTransition(
                sizeFactor: _operationalController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/vendors_insights'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/vendors_insights'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.store,
                      color: widget.selectedRoute == '/vendors_insights'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Vendors Insights',
                      style: TextStyle(
                        color: widget.selectedRoute == '/vendors_insights'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/vendors_insights'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/vendors_insights',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/vendors_insights');
                      Navigator.pushNamed(context, '/vendors_insights');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _operationalController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/customer_balances'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/customer_balances'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.payment,
                      color: widget.selectedRoute == '/customer_balances'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Customer Balances',
                      style: TextStyle(
                        color: widget.selectedRoute == '/customer_balances'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/customer_balances'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/customer_balances',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/customer_balances');
                      Navigator.pushNamed(context, '/customer_balances');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _operationalController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/customer_insights'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/customer_insights'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.people,
                      color: widget.selectedRoute == '/customer_insights'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Customer Insights',
                      style: TextStyle(
                        color: widget.selectedRoute == '/customer_insights'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/customer_insights'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/customer_insights',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/customer_insights');
                      Navigator.pushNamed(context, '/customer_insights');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _operationalController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/products_insights'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/products_insights'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.inventory_2,
                      color: widget.selectedRoute == '/products_insights'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Products Insights',
                      style: TextStyle(
                        color: widget.selectedRoute == '/products_insights'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/products_insights'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/products_insights',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/products_insights');
                      Navigator.pushNamed(context, '/products_insights');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _operationalController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/top_selling_products'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/top_selling_products'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.trending_up,
                      color: widget.selectedRoute == '/top_selling_products'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Top-Selling Products',
                      style: TextStyle(
                        color: widget.selectedRoute == '/top_selling_products'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight:
                            widget.selectedRoute == '/top_selling_products'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/top_selling_products',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/top_selling_products');
                      Navigator.pushNamed(context, '/top_selling_products');
                    },
                  ),
                ),
              ),
            ],
          ),
        // Financial Statements
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isFinancialStatementsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isFinancialStatementsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: isFinancialStatementsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Financial Statements',
                style: TextStyle(
                  color: isFinancialStatementsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isFinancialStatementsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isFinancialStatementsSelected,
              selectedTileColor: Colors.transparent,
              trailing: Icon(
                _isFinancialStatementsExpanded
                    ? Icons.expand_less
                    : Icons.expand_more,
                color: Colors.grey,
                size: 16,
              ),
              onTap: _toggleFinancialExpanded,
            ),
          ),
        ),
        // Financial Statements Children
        if (_isFinancialStatementsExpanded)
          Column(
            children: [
              SizeTransition(
                sizeFactor: _financialController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/income_statement'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/income_statement'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.trending_up,
                      color: widget.selectedRoute == '/income_statement'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Income Statement',
                      style: TextStyle(
                        color: widget.selectedRoute == '/income_statement'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/income_statement'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/income_statement',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/income_statement');
                      Navigator.pushNamed(context, '/income_statement');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _financialController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/balance_sheet'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/balance_sheet'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_balance,
                      color: widget.selectedRoute == '/balance_sheet'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Balance Sheet',
                      style: TextStyle(
                        color: widget.selectedRoute == '/balance_sheet'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/balance_sheet'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/balance_sheet',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/balance_sheet');
                      Navigator.pushNamed(context, '/balance_sheet');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _financialController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/cash_flow_statement'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/cash_flow_statement'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.monetization_on,
                      color: widget.selectedRoute == '/cash_flow_statement'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Cash Flow Statement',
                      style: TextStyle(
                        color: widget.selectedRoute == '/cash_flow_statement'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight:
                            widget.selectedRoute == '/cash_flow_statement'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/cash_flow_statement',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/cash_flow_statement');
                      Navigator.pushNamed(context, '/cash_flow_statement');
                    },
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: _financialController,
                axisAlignment: -1.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.selectedRoute == '/trial_balance'
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: widget.selectedRoute == '/trial_balance'
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.receipt_long,
                      color: widget.selectedRoute == '/trial_balance'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Trial Balance',
                      style: TextStyle(
                        color: widget.selectedRoute == '/trial_balance'
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: widget.selectedRoute == '/trial_balance'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: widget.selectedRoute == '/trial_balance',
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/trial_balance');
                      Navigator.pushNamed(context, '/trial_balance');
                    },
                  ),
                ),
              ),
            ],
          ),
        // Analysis Reports
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isAnalysisReportsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isAnalysisReportsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.analytics,
                color: isAnalysisReportsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Analysis Reports',
                style: TextStyle(
                  color: isAnalysisReportsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isAnalysisReportsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isAnalysisReportsSelected,
              selectedTileColor: Colors.transparent,
              trailing: Icon(Icons.expand_more, color: Colors.grey, size: 16),
              onTap: () {
                widget.onSelect('/analysis_reports');
              },
            ),
          ),
        ),
        // Ledger & Accounts
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isLedgerAccountsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isLedgerAccountsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.book,
                color: isLedgerAccountsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Ledger & Accounts',
                style: TextStyle(
                  color: isLedgerAccountsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isLedgerAccountsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isLedgerAccountsSelected,
              selectedTileColor: Colors.transparent,
              trailing: Icon(Icons.expand_more, color: Colors.grey, size: 16),
              onTap: () {
                widget.onSelect('/ledger_accounts');
              },
            ),
          ),
        ),
        // Aging Reports
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isAgingReportsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isAgingReportsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.timer,
                color: isAgingReportsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Aging Reports',
                style: TextStyle(
                  color: isAgingReportsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isAgingReportsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isAgingReportsSelected,
              selectedTileColor: Colors.transparent,
              trailing: Icon(Icons.expand_more, color: Colors.grey, size: 16),
              onTap: () {
                widget.onSelect('/aging_reports');
              },
            ),
          ),
        ),
      ],
    );
  }
}
