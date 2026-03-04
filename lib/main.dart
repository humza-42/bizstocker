import 'Screens/dashboard_screen.dart';
import 'Screens/Purchases/purchase_screen.dart';
import 'Screens/Purchases/orders_screen.dart';
import 'Screens/Purchases/returns_screen.dart';
import 'Screens/Purchases/vendors_screen.dart';
import 'Screens/Manufacturing/manufacturing_screen.dart';
import 'Screens/Manufacturing/productions_screen.dart';
import 'Screens/Manufacturing/products_screen.dart';
import 'Screens/Manufacturing/bom_screen.dart';
import 'SplashScreen/splash_screen.dart';
import 'theme/color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BizStockersdsads',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/purchases': (context) => const PurchaseScreen(),
        '/orders': (context) => const OrdersScreen(),
        '/returns': (context) => const ReturnsScreen(),
        '/vendors': (context) => const VendorsScreen(),
        '/manufacturing': (context) => const ManufacturingScreen(),
        '/productions': (context) => const ProductionsScreen(),
        '/products': (context) => const ProductsScreen(),
        '/bom': (context) => const BomScreen(),
      },
    );
  }
}
