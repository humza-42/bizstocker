import 'package:flutter/material.dart';

class ExpensesExpansionTile extends StatefulWidget {
  final String? selectedRoute;
  final ValueChanged<String> onSelect;

  const ExpensesExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<ExpensesExpansionTile> createState() => _ExpensesExpansionTileState();
}

class _ExpensesExpansionTileState extends State<ExpensesExpansionTile>
    with SingleTickerProviderStateMixin {
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
    bool isExpensesSelected = widget.selectedRoute == '/expenses_screen';
    bool isAllExpensesSelected = widget.selectedRoute == '/all_expenses_screen';
    bool isGeneralExpensesSelected =
        widget.selectedRoute == '/general_expenses_screen';
    bool isManageExpenseGroupsSelected =
        widget.selectedRoute == '/manage_expense_groups_screen';

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: isExpensesSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isExpensesSelected
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
              color: isExpensesSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/expenses_screen');
                Navigator.pushNamed(context, '/expenses_screen');
              },
              child: Text(
                "Expenses",
                style: TextStyle(
                  color: isExpensesSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isExpensesSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: _toggleExpanded,
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.grey,
              ),
            ),
            selected: isExpensesSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/expenses_screen');
              Navigator.pushNamed(context, '/expenses_screen');
            },
          ),
        ),
        // All Expenses
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: isAllExpensesSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isAllExpensesSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: const SizedBox(width: 32),
              title: GestureDetector(
                onTap: () {
                  widget.onSelect('/all_expenses_screen');
                  Navigator.pushNamed(context, '/all_expenses_screen');
                },
                child: Text(
                  "All Expenses",
                  style: TextStyle(
                    color: isAllExpensesSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    fontWeight: isAllExpensesSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              selected: isAllExpensesSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/all_expenses_screen');
                Navigator.pushNamed(context, '/all_expenses_screen');
              },
            ),
          ),
        ),
        // General Expenses
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: isGeneralExpensesSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isGeneralExpensesSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: const SizedBox(width: 32),
              title: GestureDetector(
                onTap: () {
                  widget.onSelect('/general_expenses_screen');
                  Navigator.pushNamed(context, '/general_expenses_screen');
                },
                child: Text(
                  "General Expenses",
                  style: TextStyle(
                    color: isGeneralExpensesSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    fontWeight: isGeneralExpensesSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              selected: isGeneralExpensesSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/general_expenses_screen');
                Navigator.pushNamed(context, '/general_expenses_screen');
              },
            ),
          ),
        ),
        // Manage Expense Groups
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: isManageExpenseGroupsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isManageExpenseGroupsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: const SizedBox(width: 32),
              title: GestureDetector(
                onTap: () {
                  widget.onSelect('/manage_expense_groups_screen');
                  Navigator.pushNamed(context, '/manage_expense_groups_screen');
                },
                child: Text(
                  "Manage Expense Groups",
                  style: TextStyle(
                    color: isManageExpenseGroupsSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    fontWeight: isManageExpenseGroupsSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              selected: isManageExpenseGroupsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/manage_expense_groups_screen');
                Navigator.pushNamed(context, '/manage_expense_groups_screen');
              },
            ),
          ),
        ),
      ],
    );
  }
}
