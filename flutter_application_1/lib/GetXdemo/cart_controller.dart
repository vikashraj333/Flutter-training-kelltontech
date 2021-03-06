import 'package:flutter_application_1/utiles/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;
  void addProductToCart(Product product) {
    selectedProducts.add(product);
    update();
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
    update();
  }

  void increaseQuantityProduct(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  void decreaseQuantityProduct(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.quantityPrice);
}
