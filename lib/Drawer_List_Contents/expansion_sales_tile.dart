import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SalesExpansionTile extends StatefulWidget {
  final String selectedRoute;
  final ValueChanged<String> onSelect;

  const SalesExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<SalesExpansionTile> createState() => _SalesExpansionTileState();
}

class _SalesExpansionTileState extends State<SalesExpansionTile>
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
    bool isSalesSelected = widget.selectedRoute == '/sales_screen';
    bool isOrderSelected = widget.selectedRoute == '/sales_orders';
    bool isCustomersSelected = widget.selectedRoute == '/sales_customers';
    bool isReturnsSelected = widget.selectedRoute == '/sales_returns';
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
              color: isSalesSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/sales_screen');
                Navigator.pushNamed(context, '/sales_screen');
              },
              child: Text(
                "Sales",
                style: TextStyle(
                  color: isSalesSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isSalesSelected
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
            selected: isSalesSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/sales_screen');
              Navigator.pushNamed(context, '/sales_screen');
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
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),

                  decoration: BoxDecoration(
                    color: isOrderSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isOrderSelected
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
                      color: isOrderSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                    title: Text(
                      "Orders",
                      style: TextStyle(
                        color: isOrderSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isOrderSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    selected: isOrderSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/sales_orders');
                      Navigator.pushNamed(context, '/sales_orders');
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
                    color: isCustomersSelected
                        ? Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: isCustomersSelected
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
                      color: isCustomersSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Customers',
                      style: TextStyle(
                        color: isCustomersSelected
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        fontWeight: isCustomersSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    selected: isCustomersSelected,
                    selectedTileColor: Colors.transparent,
                    onTap: () {
                      widget.onSelect('/sales_customers');
                      Navigator.pushNamed(context, '/sales_customers');
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
                      widget.onSelect('/sales_returns');
                      Navigator.pushNamed(context, '/sales_returns');
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
