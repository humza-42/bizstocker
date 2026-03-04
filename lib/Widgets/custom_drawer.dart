import '../Drawer_List_Contents/dashboard_item.dart';
import './drawer_header.dart';
import '../Drawer_List_Contents/expansion_purchase_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
                  const DashboardItem(),
                  Divider(),
                  const PurchasesExpansionTile(),
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
