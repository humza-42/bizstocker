import 'package:biz_stocker/Widgets/custom_button.dart';
import 'package:biz_stocker/Widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:biz_stocker/Widgets/custom_drawer.dart';

class ManufacturingScreen extends StatelessWidget {
  const ManufacturingScreen({super.key});

  Widget _buildProductionRow({
    required String id,
    required String product,
    required String date,
    required String qty,
    required String status,
    required Color statusColor,
    required String items,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              id,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              product,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              date,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 80,
            child: Text(
              qty,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                status,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: statusColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: Text(
              items,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 200,
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View Items',
                      style: TextStyle(fontSize: 12.0, color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(fontSize: 12.0, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(currentRoute: '/manufacturing'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Manufacturing'),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              const Text(
                'Production Orders',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),

              // // Search Section
              // Card(
              //   elevation: 4.0,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(12.0),
              //   ),
              //   child: Container(
              //     padding: const EdgeInsets.all(16.0),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(12.0),
              //       color: Theme.of(context).colorScheme.surface,
              //     ),
              //     child: Column(
              //       children: [
              //         // Search Field
              //         // CustomTextField(
              //         //   hintText:
              //         //       'Search by Production #, Product, Reference #...',
              //         //   fillColor: Colors.white,
              //         // ),
              //         const SizedBox(height: 16.0),

              //         // Search Button
              //         // CustomButton(
              //         //   onPressed: () {
              //         //     // Search functionality would be implemented here
              //         //   },
              //         //   text: 'SEARCH',
              //         //   foregroundColor: Colors.white,
              //         //   fontSize: 16.0,
              //         //   height: 45.0,
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(height: 24.0),

              // Production Orders Table Card
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  child: Column(
                    children: [
                      // Horizontal Scroll View for Table
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 1000, // Minimum width to prevent crowding
                          child: Column(
                            children: [
                              // Table Header
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 60,
                                      child: Text(
                                        'ID',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        'PRODUCT',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120,
                                      child: Text(
                                        'DATE',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        'QTY',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        'STATUS',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        'ITEMS',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'ACTIONS',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Table Rows
                              const Divider(height: 0),
                              _buildProductionRow(
                                id: '35',
                                product: 'one',
                                date: '2/25/2026',
                                qty: '5',
                                status: 'completed',
                                statusColor: Colors.green,
                                items: '1',
                              ),
                              const Divider(height: 0),
                              _buildProductionRow(
                                id: '31',
                                product: 'steel',
                                date: '2/20/2026',
                                qty: '10',
                                status: 'completed',
                                statusColor: Colors.green,
                                items: '3',
                              ),
                              const Divider(height: 0),
                              _buildProductionRow(
                                id: '30',
                                product: 'Product A',
                                date: '2/20/2026',
                                qty: '10',
                                status: 'completed',
                                statusColor: Colors.green,
                                items: '3',
                              ),
                              const Divider(height: 0),
                              _buildProductionRow(
                                id: '20',
                                product: 'Product-X',
                                date: '2/20/2026',
                                qty: '5',
                                status: 'completed',
                                statusColor: Colors.green,
                                items: '3',
                              ),
                              const Divider(height: 0),
                              _buildProductionRow(
                                id: '27',
                                product: 'Pro A',
                                date: '2/19/2026',
                                qty: '5',
                                status: 'completed',
                                statusColor: Colors.green,
                                items: '1',
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Footer
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text(
                            'Showing 1 to 5 of 5 production orders',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
