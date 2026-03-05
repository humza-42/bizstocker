import 'package:biz_stocker/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class ReturnsScreen extends StatelessWidget {
  const ReturnsScreen({super.key});

  Widget _buildOrderRow({
    required String orderNumber,
    required String reference,
    required String customer,
    required String orderDate,
    required String total,
    required String status,
    required Color statusColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              orderNumber,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              reference,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              customer,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              orderDate,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              total,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
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
            width: 200,
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View',
                      style: TextStyle(fontSize: 12.0, color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit',
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
      drawer: const CustomDrawer(currentRoute: '/sales_returns'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Returns'),
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
                'Returns',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),

              // Search Section
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
              //         //       'Search by Order #, Voucher #, Reference #, Vendor...',
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

              // Purchase Orders Table Card
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
                                      width: 80,
                                      child: Text(
                                        'ORDER #',
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
                                        'REFERENCE',
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
                                        'VENDOR',
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
                                        'ORDER DATE',
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
                                        'TOTAL',
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
                              _buildOrderRow(
                                orderNumber: '#24',
                                reference: '-',
                                customer: 'third',
                                orderDate: '2/25/2026',
                                total: 'Rs 30.00',
                                status: 'shipped',
                                statusColor: Colors.green,
                              ),
                              const Divider(height: 0),
                              _buildOrderRow(
                                orderNumber: '#23',
                                reference: '-',
                                customer: 'first',
                                orderDate: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'shipped',
                                statusColor: Colors.green,
                              ),
                              const Divider(height: 0),
                              _buildOrderRow(
                                orderNumber: '#22',
                                reference: '-',
                                customer: 'TEST',
                                orderDate: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'shipped',
                                statusColor: Colors.green,
                              ),
                              _buildOrderRow(
                                orderNumber: '#21',
                                reference: '-',
                                customer: 'TEST',
                                orderDate: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'shipped',
                                statusColor: Colors.green,
                              ),
                              _buildOrderRow(
                                orderNumber: '#20',
                                reference: '-',
                                customer: 'TEST',
                                orderDate: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'shipped',
                                statusColor: Colors.green,
                              ),
                              _buildOrderRow(
                                orderNumber: '#19',
                                reference: '-',
                                customer: 'third',
                                orderDate: '2/25/2026',
                                total: 'Rs 21.00',
                                status: 'shipped',
                                statusColor: Colors.green,
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
                            'Showing 1 to 6 of 6 orders',
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
