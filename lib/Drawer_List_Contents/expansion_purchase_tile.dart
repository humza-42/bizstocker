import 'package:flutter/material.dart';

class PurchasesExpansionTile extends StatefulWidget {
  const PurchasesExpansionTile({super.key});

  @override
  State<PurchasesExpansionTile> createState() => _PurchasesExpansionTileState();
}

class _PurchasesExpansionTileState extends State<PurchasesExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.shopping_cart, color: Colors.grey),
          title: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/purchases');
            },
            child: const Text('Purchases'),
          ),
          trailing: IconButton(
            icon: Icon(
              _isExpanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          onTap: () {
            Navigator.pushNamed(context, '/purchases');
          },
        ),
        if (_isExpanded)
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.receipt_long, color: Colors.grey),
                title: const Text('Orders'),
                onTap: () {
                  Navigator.pushNamed(context, '/orders');
                },
              ),
              ListTile(
                leading: const Icon(Icons.replay, color: Colors.grey),
                title: const Text('Returns'),
                onTap: () {
                  Navigator.pushNamed(context, '/returns');
                },
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
                onTap: () {
                  Navigator.pushNamed(context, '/vendors');
                },
              ),
            ],
          ),
      ],
    );
  }
}
