import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/product_service.dart';
import 'package:flutter_application_1/utiles/product.dart';

class GVDemo extends StatelessWidget {
  const GVDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final products = ProductService().getProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Selling Products'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ...products.map((product) {
            return createProductItem(product);
          }).toList(),
        ],
      ),
    );
  }

  Widget createProductItem(Product product) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 6.0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.lightBlueAccent,
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  product.productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: NetworkImage(product.imageUrl),
                  width: 100,
                  height: 100,
                ),
                Text('Rs. ${product.price}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
