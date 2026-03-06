import 'package:biz_stocker/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TransactionPurchaseScreen extends StatelessWidget {
  const TransactionPurchaseScreen({super.key});

  Widget _buildPurchaseRow({
    required String transactionId,
    required String vendor,
    required String reference,
    required String transactionType,
    required String date,
    required String total,
    required String status,
    required Color statusColor,
    required List<Widget> actions,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              transactionId,
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
              vendor,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                reference,
                style: const TextStyle(fontSize: 12.0, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              transactionType,
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              date,
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
            width: 80,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6.0),
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
            width: 250,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: actions,
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
      drawer: const CustomDrawer(currentRoute: '/transaction_purchase'),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text('Purchase Transactions'),
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
                'Purchase Transactions',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),

              // Purchases Table Card
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
                          width: 1100, // Minimum width to prevent crowding
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
                                        '#',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        'VENDOR',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        'REF',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120,
                                      child: Text(
                                        'TRANSACTION TYPE',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        'DATE',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
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
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        'STATUS',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        'ACTIONS',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Table Rows
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#111',
                                vendor: 'sixth',
                                reference: 'Order #19',
                                transactionType: 'Purchase Order',
                                date: '2/25/2026',
                                total: 'Rs 10.00',
                                status: 'Outstanding',
                                statusColor: Colors.orange,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 4.0,
                                      ),
                                      minimumSize: Size(40, 24),
                                      textStyle: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    child: const Text('Pay'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 4.0,
                                      ),
                                      minimumSize: Size(40, 24),
                                      textStyle: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    child: const Text('Pay Full'),
                                  ),
                                ],
                              ),
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#110',
                                vendor: 'fifth',
                                reference: 'Order #18',
                                transactionType: 'Full Payment',
                                date: '2/25/2026',
                                total: 'Rs 6.00',
                                status: 'Paid',
                                statusColor: Colors.green,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#109',
                                vendor: 'fifth',
                                reference: 'Order #18',
                                transactionType: 'Purchase Order',
                                date: '2/25/2026',
                                total: 'Rs 6.00',
                                status: 'Paid',
                                statusColor: Colors.green,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 4.0,
                                      ),
                                      minimumSize: Size(40, 24),
                                      textStyle: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    child: const Text('Mark as Unpaid'),
                                  ),
                                ],
                              ),
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#102',
                                vendor: 'sixth',
                                reference: 'Order #17',
                                transactionType: 'Partial Payment',
                                date: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'Paid',
                                statusColor: Colors.green,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#101',
                                vendor: 'sixth',
                                reference: 'Order #17',
                                transactionType: 'Partial Payment',
                                date: '2/25/2026',
                                total: 'Rs 20.00',
                                status: 'Paid',
                                statusColor: Colors.green,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(height: 0),
                              _buildPurchaseRow(
                                transactionId: '#93',
                                vendor: 'sixth',
                                reference: 'Order #17',
                                transactionType: 'Purchase Order',
                                date: '2/25/2026',
                                total: 'Rs 40.00',
                                status: 'Paid',
                                statusColor: Colors.green,
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Order',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 4.0,
                                      ),
                                      minimumSize: Size(40, 24),
                                      textStyle: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    child: const Text('Mark as Unpaid'),
                                  ),
                                ],
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
                            'Showing 1 to 6 of 6 transactions',
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
