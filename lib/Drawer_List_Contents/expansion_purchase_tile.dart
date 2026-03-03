import 'package:flutter/material.dart';

class PurchasesExpansionTile extends StatelessWidget {
  const PurchasesExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(Icons.shopping_cart, color: Colors.grey),
      title: const Text('Purchases'),

      children: [
        ListTile(
          leading: const Icon(Icons.receipt_long, color: Colors.grey),
          title: const Text('Orders'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.replay, color: Colors.grey),
          title: const Text('Returns'),
          onTap: () {},
          tileColor: Colors.blue.shade50,
        ),
        // ListTile(
        //   leading: const Icon(Icons.receipt, color: Colors.grey),
        //   title: const Text('Receive Stock'),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.factory, color: Colors.grey),
        //   title: const Text('Raw Materials'),
        //   onTap: () {},
        // ),
        ListTile(
          leading: const Icon(Icons.person, color: Colors.grey),
          title: const Text('Vendors'),
          onTap: () {},
        ),
      ],
    );
  }
}
