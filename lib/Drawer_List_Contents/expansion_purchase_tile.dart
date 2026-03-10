import 'package:flutter/material.dart';

class PurchasesExpansionTile extends StatefulWidget {
  final String? selectedRoute;
  final ValueChanged<String> onSelect;

  const PurchasesExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<PurchasesExpansionTile> createState() => _PurchasesExpansionTileState();
}

class _PurchasesExpansionTileState extends State<PurchasesExpansionTile>
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
    bool isPurchasesSelected = widget.selectedRoute == '/purchases';
    bool isOrdersSelected = widget.selectedRoute == '/purchase_orders';
    bool isReturnsSelected = widget.selectedRoute == '/purchase_returns';
    bool isVendorsSelected = widget.selectedRoute == '/vendors';

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: isPurchasesSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isPurchasesSelected
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
              color: isPurchasesSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/purchases');
                Navigator.pushNamed(context, '/purchases');
              },
              child: Text(
                'Purchases',
                style: TextStyle(
                  color: isPurchasesSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isPurchasesSelected
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
            selected: isPurchasesSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/purchases');
              Navigator.pushNamed(context, '/purchases');
            },
          ),
        ),
        // Orders
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isOrdersSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isOrdersSelected
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
                color: isOrdersSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Orders',
                style: TextStyle(
                  color: isOrdersSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isOrdersSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isOrdersSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/purchase_orders');
                Navigator.pushNamed(context, '/purchase_orders');
              },
            ),
          ),
        ),
        // Returns
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isReturnsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isReturnsSelected
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
                color: isReturnsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Returns',
                style: TextStyle(
                  color: isReturnsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isReturnsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isReturnsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/purchase_returns');
                Navigator.pushNamed(context, '/purchase_returns');
              },
            ),
          ),
        ),
        // Vendors
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isVendorsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isVendorsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: isVendorsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Vendors',
                style: TextStyle(
                  color: isVendorsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isVendorsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isVendorsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/vendors');
                Navigator.pushNamed(context, '/vendors');
              },
            ),
          ),
        ),
      ],
    );
  }
}
