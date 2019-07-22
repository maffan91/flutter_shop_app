import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/screens/product_overview.dart';
import 'package:shop_app/screens/product_details.dart';
import 'package:shop_app/providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductOverview(),
        routes: {ProductDetails.routeName: (ctx) => ProductDetails()},
      ),
    );
  }
}
