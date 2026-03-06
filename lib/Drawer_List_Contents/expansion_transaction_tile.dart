import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TransactionsExpansionTile extends StatefulWidget {
  final String selectedRoute;
  final ValueChanged<String> onSelect;

  const TransactionsExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<TransactionsExpansionTile> createState() =>
      _TransactionsExpansionTileState();
}

class _TransactionsExpansionTileState extends State<TransactionsExpansionTile>
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

  Widget build(BuildContext context) {
    bool isTransactionsSelected =
        widget.selectedRoute == '/transactions_screen';
    bool isPurchaseSelected = widget.selectedRoute == '/transaction_purchase';
    bool isSalesSelected = widget.selectedRoute == '/transaction_sales';
    bool isSalesReturnSelected =
        widget.selectedRoute == '/transaction_sales_return';
    bool isPurchaseReturnSelected =
        widget.selectedRoute == '/transaction_purchase_return';
    bool isCapitalInvestmentSelected =
        widget.selectedRoute == '/transaction_capital_investment';

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: isTransactionsSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isTransactionsSelected
                ? Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.5),
                  )
                : null,
          ),
          child: ListTile(
            leading: Icon(
              Icons.swap_horiz,
              color: isTransactionsSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/transactions_screen');
                Navigator.pushNamed(context, '/transactions_screen');
              },
              child: Text(
                'Transactions',
                style: TextStyle(
                  color: isTransactionsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isTransactionsSelected
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
            selected: isTransactionsSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/transactions_screen');
              Navigator.pushNamed(context, '/transactions_screen');
            },
          ),
        ),
        if (_isExpanded)
          Column(
            children: [
              Animate(
                effects: [
                  FadeEffect(duration: 200.ms),
                  SlideEffect(
                    duration: 300.ms,
                    begin: const Offset(-0.5, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeOut,
                    delay: 50.ms,
                  ),
                ],
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isPurchaseSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isPurchaseSelected
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      size: 16,
                      color: isPurchaseSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      'Purchase',
                      style: TextStyle(
                        color: isPurchaseSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isPurchaseSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isPurchaseSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/transaction_purchase');
                      Navigator.pushNamed(context, '/transaction_purchase');
                    },
                  ),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 200.ms),
                  SlideEffect(
                    duration: 300.ms,
                    begin: const Offset(-0.5, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeOut,
                    delay: 100.ms,
                  ),
                ],
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isSalesSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isSalesSelected
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.point_of_sale,
                      size: 16,
                      color: isSalesSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      'Sales',
                      style: TextStyle(
                        color: isSalesSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isSalesSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isSalesSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/transaction_sales');
                      Navigator.pushNamed(context, '/transaction_sales');
                    },
                  ),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 200.ms),
                  SlideEffect(
                    duration: 300.ms,
                    begin: const Offset(-0.5, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeOut,
                    delay: 150.ms,
                  ),
                ],
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isSalesReturnSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isSalesReturnSelected
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.replay,
                      size: 16,
                      color: isSalesReturnSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      'Sales Return',
                      style: TextStyle(
                        color: isSalesReturnSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isSalesReturnSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isSalesReturnSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/transaction_sales_return');
                      Navigator.pushNamed(context, '/transaction_sales_return');
                    },
                  ),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 200.ms),
                  SlideEffect(
                    duration: 300.ms,
                    begin: const Offset(-0.5, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeOut,
                    delay: 200.ms,
                  ),
                ],
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isPurchaseReturnSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isPurchaseReturnSelected
                        ? Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.5),
                          )
                        : null,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.replay,
                      size: 16,
                      color: isPurchaseReturnSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      'Purchase Return',
                      style: TextStyle(
                        color: isPurchaseReturnSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isPurchaseReturnSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isPurchaseReturnSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/transaction_purchase_return');
                      Navigator.pushNamed(
                        context,
                        '/transaction_purchase_return',
                      );
                    },
                  ),
                ),
              ),
              Animate(
                effects: [
                  FadeEffect(duration: 200.ms),
                  SlideEffect(
                    duration: 300.ms,
                    begin: const Offset(-0.5, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeOut,
                    delay: 250.ms,
                  ),
                ],
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isCapitalInvestmentSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isCapitalInvestmentSelected
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
                      size: 16,
                      color: isCapitalInvestmentSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      'Capital Investment',
                      style: TextStyle(
                        color: isCapitalInvestmentSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isCapitalInvestmentSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isCapitalInvestmentSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/transaction_capital_investment');
                      Navigator.pushNamed(
                        context,
                        '/transaction_capital_investment',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
