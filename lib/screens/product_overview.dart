import 'package:flutter/material.dart';

import '../widgets/product_list.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Overview'),
      ),
      body: new ProductList(),
    );
  }
}
