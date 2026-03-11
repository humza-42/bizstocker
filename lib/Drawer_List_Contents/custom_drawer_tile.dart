import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;
  final String? selectedRoute;
  final ValueChanged<String> onSelect;
  final int indentationLevel;
  final bool isExpanded;
  final VoidCallback? onToggleExpanded;
  final bool hasChildren;

  const CustomDrawerTile({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
    required this.selectedRoute,
    required this.onSelect,
    this.indentationLevel = 0,
    this.isExpanded = false,
    this.onToggleExpanded,
    this.hasChildren = false,
  });

  bool get isSelected => selectedRoute == route;

  @override
  Widget build(BuildContext context) {
    final horizontalMargin = 8.0 + (indentationLevel * 16.0);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: 4.0),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: isSelected
            ? Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              )
            : null,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.grey,
          size: 16,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Theme.of(context).colorScheme.primary : null,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
        selected: isSelected,
        selectedTileColor: Colors.transparent,
        trailing: hasChildren
            ? Icon(
                isExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.grey,
                size: 16,
              )
            : null,
        onTap: hasChildren
            ? onToggleExpanded
            : () {
                onSelect(route);
                Navigator.pushNamed(context, route);
              },
      ),
    );
  }
}
