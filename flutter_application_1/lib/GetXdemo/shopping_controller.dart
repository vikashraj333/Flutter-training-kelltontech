import 'package:flutter_application_1/services/product_service.dart';
import 'package:flutter_application_1/utiles/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    products.assignAll(ProductService().getProducts().toList());
  }
}
