import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});
            },
            child: Text('Add Product'),
          ),
        ),
        Expanded(child: Products(products, deleteProduct: deleteProduct))
      ],
    );
  }
}
