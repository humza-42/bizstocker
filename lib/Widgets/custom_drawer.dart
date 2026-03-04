import '../Drawer_List_Contents/dashboard_item.dart';
import './drawer_header.dart';
import '../Drawer_List_Contents/expansion_purchase_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  DashboardItem()
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
                  PurchasesExpansionTile()
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideX(
                        duration: 500.ms,
                        begin: -1.0,
                        end: 0.0,
                        curve: Curves.easeOut,
                        delay: 200.ms,
                      ),
                  // const ManufacturingExpansionTile(),
                  // const SalesExpansionTile(),
                  // const InventoryExpansionTile(),
                  // const TransactionsExpansionTile(),
                  // const ExpensesExpansionTile(),
                  // const ReportsExpansionTile(),
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
