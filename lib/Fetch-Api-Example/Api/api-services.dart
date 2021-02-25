import 'package:getx_tutorial/Fetch-Api-Example/Models/Product-Model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie');
    return (response.statusCode == 200) ? productFromJson(response.body) : null;
  }
}
