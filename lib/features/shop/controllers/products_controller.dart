import 'package:dio/dio.dart';
import 'package:e_commerce_yt/features/shop/models/products_model.dart';

import 'package:get/get.dart';

class WProductsController extends GetxController {
  final dio = Dio();
  late List<Product> allProducts;
  var isLoading = true;
  void getProduct() async {
    final response = await dio.get("https://dummyjson.com/products");
    isLoading = true;
    update();
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Get success");
      allProducts = (response.data['products'] as List)
          .map((e) => Product.fromJson(e))
          .toList();
      isLoading = false;
      update();
      print(allProducts);
    } else {
      throw ();
    }
  }

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }
}
