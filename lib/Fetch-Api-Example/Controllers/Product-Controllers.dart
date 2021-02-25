import 'package:get/get.dart';
import 'package:getx_tutorial/Fetch-Api-Example/Api/api-services.dart';
import 'package:getx_tutorial/Fetch-Api-Example/Models/Product-Model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(false);
      var products = await ApiServices.fetchProducts();
      if (products != null) productList.assignAll(products);
    } finally {
      isLoading(true);
    }
  }
}
