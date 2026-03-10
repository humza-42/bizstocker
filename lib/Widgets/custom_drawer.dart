import 'package:biz_stocker/Drawer_List_Contents/expansion_expenses_tile.dart';
import 'package:biz_stocker/Drawer_List_Contents/expansion_reports_tile.dart';
import 'package:biz_stocker/Drawer_List_Contents/expansion_sales_tile.dart';
import 'package:biz_stocker/Drawer_List_Contents/expansion_transaction_tile.dart';

import '../Drawer_List_Contents/dashboard_item.dart';
import './drawer_header.dart';
import '../Drawer_List_Contents/expansion_purchase_tile.dart';
import '../Drawer_List_Contents/expansion_manufacturing_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomDrawer extends StatefulWidget {
  final String currentRoute;

  const CustomDrawer({super.key, required this.currentRoute});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String _selectedRoute = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _controller.forward();
    _selectedRoute = widget.currentRoute;
  }

  @override
  void didUpdateWidget(CustomDrawer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentRoute != oldWidget.currentRoute) {
      setState(() {
        _selectedRoute = widget.currentRoute;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleItemSelect(String route) {
    setState(() {
      _selectedRoute = route;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDashboardSelected = _selectedRoute == '/dashboard';

    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: const DrawerHeaderWidget(),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DashboardItem(
                        isSelected: isDashboardSelected,
                        onSelect: (selected) {
                          if (selected) {
                            _handleItemSelect('/dashboard');
                          }
                        },
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                      ),
                  Divider()
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 100.ms,
                      ),
                  PurchasesExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 200.ms,
                      ),
                  ManufacturingExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 300.ms,
                      ),
                  SalesExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 400.ms,
                      ),
                  // const InventoryExpansionTile(),
                  TransactionsExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 600.ms,
                      ),
                  ExpensesExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 600.ms,
                      ),

                  ReportsExpansionTile(
                        selectedRoute: _selectedRoute,
                        onSelect: _handleItemSelect,
                      )
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 700.ms,
                      ),
                  // const SettingsExpansionTile(),
                ],
              ),
            ),
            // const UserInfo(),
            // const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
