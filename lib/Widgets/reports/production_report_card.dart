import 'package:flutter/material.dart';

class ProductionReportCard extends StatelessWidget {
  const ProductionReportCard({super.key});

  Widget _buildProductionRow({
    required String date,
    required String productionId,
    required String product,
    required String quantity,
    required String rawMaterialCost,
    required String totalProductionCost,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              date,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 70,
            child: Text(
              productionId,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 90,
            child: Text(
              product,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 70,
            child: Text(
              quantity,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              rawMaterialCost,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              totalProductionCost,
              style: const TextStyle(fontSize: 11.0, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 70,
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Adjust',
                  style: TextStyle(fontSize: 11.0, color: Colors.orange),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          children: [
            // Table Container
            Container(
              width: 650,
              child: Column(
                children: [
                  // Table Header
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
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
                            'DATE',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            'PRODUCTION ID',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          child: Text(
                            'PRODUCT',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            'QUANTITY',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'RAW MATERIAL COST',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'TOTAL COST',
                            style: TextStyle(
                              fontSize: 9.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'ACTIONS',
                              style: TextStyle(
                                fontSize: 9.0,
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
                    date: '2/25/2026',
                    productionId: '#35',
                    product: 'one',
                    quantity: '5.00',
                    rawMaterialCost: 'Rs 0',
                    totalProductionCost: 'Rs 0',
                  ),
                  const Divider(height: 0),
                  _buildProductionRow(
                    date: '2/20/2026',
                    productionId: '#20',
                    product: 'Product-X',
                    quantity: '5.00',
                    rawMaterialCost: 'Rs 225',
                    totalProductionCost: 'Rs 225',
                  ),
                  const Divider(height: 0),
                  _buildProductionRow(
                    date: '2/20/2026',
                    productionId: '#30',
                    product: 'Product A',
                    quantity: '10.00',
                    rawMaterialCost: 'Rs 8,500',
                    totalProductionCost: 'Rs 8,500',
                  ),
                  const Divider(height: 0),
                  _buildProductionRow(
                    date: '2/20/2026',
                    productionId: '#31',
                    product: 'steel',
                    quantity: '10.00',
                    rawMaterialCost: 'Rs 8,500',
                    totalProductionCost: 'Rs 8,500',
                  ),
                  const Divider(height: 0),
                  _buildProductionRow(
                    date: '2/19/2026',
                    productionId: '#27',
                    product: 'Pro A',
                    quantity: '5.00',
                    rawMaterialCost: 'Rs 250',
                    totalProductionCost: 'Rs 250',
                  ),
                ],
              ),
            ),

            // Footer with Pagination
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Previous',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
