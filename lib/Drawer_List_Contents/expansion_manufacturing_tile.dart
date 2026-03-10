import 'package:flutter/material.dart';

class ManufacturingExpansionTile extends StatefulWidget {
  final String? selectedRoute;
  final ValueChanged<String> onSelect;

  const ManufacturingExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<ManufacturingExpansionTile> createState() =>
      _ManufacturingExpansionTileState();
}

class _ManufacturingExpansionTileState extends State<ManufacturingExpansionTile>
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
    bool isManufacturingSelected = widget.selectedRoute == '/manufacturing';
    bool isProductionsSelected = widget.selectedRoute == '/productions';
    bool isProductsSelected = widget.selectedRoute == '/products';
    bool isBomSelected = widget.selectedRoute == '/bom';

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: isManufacturingSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isManufacturingSelected
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
              color: isManufacturingSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/manufacturing');
                Navigator.pushNamed(context, '/manufacturing');
              },
              child: Text(
                'Manufacturing',
                style: TextStyle(
                  color: isManufacturingSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isManufacturingSelected
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
            selected: isManufacturingSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/manufacturing');
              Navigator.pushNamed(context, '/manufacturing');
            },
          ),
        ),
        // Productions
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isProductionsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isProductionsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.production_quantity_limits,
                color: isProductionsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Productions',
                style: TextStyle(
                  color: isProductionsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isProductionsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isProductionsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/productions');
                Navigator.pushNamed(context, '/productions');
              },
            ),
          ),
        ),
        // Products
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isProductsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isProductsSelected
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
                color: isProductsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Products',
                style: TextStyle(
                  color: isProductsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isProductsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isProductsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/products');
                Navigator.pushNamed(context, '/products');
              },
            ),
          ),
        ),
        // BOM
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isBomSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isBomSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.list_alt,
                color: isBomSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'BOM',
                style: TextStyle(
                  color: isBomSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isBomSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isBomSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/bom');
                Navigator.pushNamed(context, '/bom');
              },
            ),
          ),
        ),
      ],
    );
  }
}
