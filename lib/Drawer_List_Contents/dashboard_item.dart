import '../Screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final bool isSelected;
  final ValueChanged<bool> onSelect;

  const DashboardItem({
    super.key,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
          Icons.dashboard,
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.grey,
          size: 16,
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: isSelected ? Theme.of(context).colorScheme.primary : null,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 14.0,
          ),
        ),
        selected: isSelected,
        selectedTileColor: Colors.transparent,
        onTap: () {
          onSelect(true);
          Navigator.of(context).pop(); // Close the drawer
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const DashboardScreen()),
          );
        },
      ),
    );
  }
}
