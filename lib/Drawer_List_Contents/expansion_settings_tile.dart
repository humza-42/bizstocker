import 'package:flutter/material.dart';

class SettingsExpansionTile extends StatefulWidget {
  final String? selectedRoute;
  final ValueChanged<String> onSelect;

  const SettingsExpansionTile({
    super.key,
    required this.selectedRoute,
    required this.onSelect,
  });

  @override
  State<SettingsExpansionTile> createState() => _SettingsExpansionTileState();
}

class _SettingsExpansionTileState extends State<SettingsExpansionTile>
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
    bool isSettingsSelected = widget.selectedRoute == '/settings';
    bool isCompanySelected = widget.selectedRoute == '/settings_company';
    bool isUsersSelected = widget.selectedRoute == '/settings_users';
    bool isGroupsSelected = widget.selectedRoute == '/settings_groups';

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: isSettingsSelected
                ? Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isSettingsSelected
                ? Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.5),
                  )
                : null,
          ),
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: isSettingsSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 16,
            ),
            title: GestureDetector(
              onTap: () {
                widget.onSelect('/settings');
                Navigator.pushNamed(context, '/settings');
              },
              child: Text(
                'Settings',
                style: TextStyle(
                  color: isSettingsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isSettingsSelected
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
            selected: isSettingsSelected,
            selectedTileColor: Colors.transparent,
            onTap: () {
              widget.onSelect('/settings');
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ),
        // Company
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isCompanySelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isCompanySelected
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
                color: isCompanySelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Company',
                style: TextStyle(
                  color: isCompanySelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isCompanySelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isCompanySelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/settings_company');
                Navigator.pushNamed(context, '/settings_company');
              },
            ),
          ),
        ),
        // Users
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isUsersSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isUsersSelected
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
                color: isUsersSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Users',
                style: TextStyle(
                  color: isUsersSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isUsersSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isUsersSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/settings_users');
                Navigator.pushNamed(context, '/settings_users');
              },
            ),
          ),
        ),
        // Groups
        SizeTransition(
          sizeFactor: _controller,
          axisAlignment: -1.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: isGroupsSelected
                  ? Theme.of(
                      context,
                    ).colorScheme.primaryContainer.withOpacity(0.3)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isGroupsSelected
                  ? Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.5),
                    )
                  : null,
            ),
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: isGroupsSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                size: 16,
              ),
              title: Text(
                'Groups',
                style: TextStyle(
                  color: isGroupsSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  fontWeight: isGroupsSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              selected: isGroupsSelected,
              selectedTileColor: Colors.transparent,
              onTap: () {
                widget.onSelect('/settings_groups');
                Navigator.pushNamed(context, '/settings_groups');
              },
            ),
          ),
        ),
      ],
    );
  }
}
