import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_controller.dart';

class UserCartScreen extends StatelessWidget {
  const UserCartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Cart'),
        ),
        body: GetBuilder<CartController>(
          builder: ((controller) {
            return Column(children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: controller.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            controller.selectedProducts[index].imageUrl),
                        title: Text(
                            controller.selectedProducts[index].productName),
                        subtitle: Text(controller
                            .selectedProducts[index].quantityPrice
                            .toString()),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                                onPressed: () {
                                  controller.increaseQuantityProduct(index);
                                },
                                child: const Icon(Icons.add)),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(controller.selectedProducts[index].quantity
                                .toString()),
                            const SizedBox(
                              width: 20,
                            ),
                            TextButton(
                                onPressed: () {
                                  controller.decreaseQuantityProduct(index);
                                },
                                child: const Icon(Icons.remove)),
                            const SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  controller.removeProductsFromCart(
                                      controller.selectedProducts[index]);
                                },
                                child: const Icon(Icons.delete)),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10),
              Text(
                'Total Price : Rs. ${controller.totalCost}',
                style: const TextStyle(fontSize: 30.0),
              )
            ]);
          }),
        ));
  }
}
