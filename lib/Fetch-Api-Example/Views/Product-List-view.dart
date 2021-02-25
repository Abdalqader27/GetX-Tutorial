import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/Fetch-Api-Example/Controllers/Product-Controllers.dart';

class ProductListViewScreen extends StatelessWidget {
  final ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products Api")),
      body: Obx(() {
        if (!_productController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else
          return ListView.builder(
              shrinkWrap: true,
              itemCount: _productController.productList.length,
              itemBuilder: (_, index) {
                return Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                _productController.productList[index].imageLink,
                                width: 150,
                                height: 100,
                                fit: BoxFit.fill,
                                color: Colors.purple,
                                colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_productController.productList[index].name, style: TextStyle(fontSize: 18)),
                              Text(_productController.productList[index].brand, style: TextStyle(fontSize: 14, color: Colors.grey)),
                              Text(_productController.productList[index].category, style: TextStyle(fontSize: 14, color: Colors.grey)),
                            ],
                          ))
                        ],
                      ),
                      SizedBox(height: 3)
                    ],
                  ),
                );
              });
      }),
    );
  }
}
