import 'package:flutter/material.dart';
import 'custom_drawer_tile.dart';

class CustomExpansionReportsTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final String route;
  final String? selectedRoute;
  final ValueChanged<String> onSelect;
  final int indentationLevel;
  final List<Widget> children;

  const CustomExpansionReportsTile({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
    required this.selectedRoute,
    required this.onSelect,
    this.indentationLevel = 0,
    required this.children,
  });

  @override
  State<CustomExpansionReportsTile> createState() =>
      _CustomExpansionReportsTileState();
}

class _CustomExpansionReportsTileState extends State<CustomExpansionReportsTile>
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
        CustomDrawerTile(
          title: widget.title,
          icon: widget.icon,
          route: widget.route,
          selectedRoute: widget.selectedRoute,
          onSelect: widget.onSelect,
          indentationLevel: widget.indentationLevel,
          isExpanded: _isExpanded,
          onToggleExpanded: _toggleExpanded,
          hasChildren: true,
        ),
        if (_isExpanded)
          SizeTransition(
            sizeFactor: _controller,
            axisAlignment: -1.0,
            child: Column(children: widget.children),
          ),
      ],
    );
  }
}
