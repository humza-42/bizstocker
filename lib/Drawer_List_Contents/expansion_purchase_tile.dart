import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PurchasesExpansionTile extends StatefulWidget {
  const PurchasesExpansionTile({super.key});

  @override
  State<PurchasesExpansionTile> createState() => _PurchasesExpansionTileState();
}

class _PurchasesExpansionTileState extends State<PurchasesExpansionTile>
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
            onPressed: _toggleExpanded,
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
                  )
                  .animate()
                  .fadeIn(duration: 200.ms)
                  .slideX(
                    duration: 300.ms,
                    begin: -0.5,
                    end: 0.0,
                    curve: Curves.easeOut,
                    delay: 50.ms,
                  ),
              ListTile(
                    leading: const Icon(Icons.replay, color: Colors.grey),
                    title: const Text('Returns'),
                    onTap: () {
                      Navigator.pushNamed(context, '/returns');
                    },
                  )
                  .animate()
                  .fadeIn(duration: 200.ms)
                  .slideX(
                    duration: 300.ms,
                    begin: -0.5,
                    end: 0.0,
                    curve: Curves.easeOut,
                    delay: 100.ms,
                  ),
              // ListTile(
              //   leading: const Icon(Icons.receipt, color: Colors.grey),
              //   title: const Text('Receive Stock'),
              //   onTap: () {},
              // ).animate().fadeIn(duration: 200.ms).slideX(
              //       duration: 300.ms,
              //       begin: -0.5,
              //       end: 0.0,
              //       curve: Curves.easeOut,
              //       delay: 150.ms,
              //     ),
              // ListTile(
              //   leading: const Icon(Icons.factory, color: Colors.grey),
              //   title: const Text('Raw Materials'),
              //   onTap: () {},
              // ).animate().fadeIn(duration: 200.ms).slideX(
              //       duration: 300.ms,
              //       begin: -0.5,
              //       end: 0.0,
              //       curve: Curves.easeOut,
              //       delay: 200.ms,
              //     ),
              ListTile(
                    leading: const Icon(Icons.person, color: Colors.grey),
                    title: const Text('Vendors'),
                    onTap: () {
                      Navigator.pushNamed(context, '/vendors');
                    },
                  )
                  .animate()
                  .fadeIn(duration: 200.ms)
                  .slideX(
                    duration: 300.ms,
                    begin: -0.5,
                    end: 0.0,
                    curve: Curves.easeOut,
                    delay: 150.ms,
                  ),
            ],
          ),
      ],
    );
  }
}
