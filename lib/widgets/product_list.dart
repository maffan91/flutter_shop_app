import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';
import '../models/product.dart';
import '../providers/products.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final List<Product> products = productsData.products;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider(
        builder: (context) => products[index],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
