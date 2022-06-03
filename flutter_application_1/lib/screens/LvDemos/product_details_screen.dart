import 'package:flutter/material.dart';
import 'package:flutter_application_1/utiles/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = '/productdetails';
  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.productName} details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: product.productId,
              child: Image.network(product.imageUrl),
            ),
          ),
          Card(
            elevation: 20,
            child: Column(
              children: [
                Text(
                  'Product ID : ${product.productId}',
                  style: const TextStyle(fontSize: 30.0),
                ),
                Text(
                  product.productName,
                  style: const TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
                Text(
                  'RS. ${product.price}',
                  style: const TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
