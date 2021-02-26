import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyGetStorageApp extends StatelessWidget {
  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Storage And Valid Email")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(8.0), child: TextField(controller: emailController)),
            SizedBox(height: 8),
            RaisedButton(
                child: Text("Write"),
                onPressed: () {
                  if (GetUtils.isEmail(emailController.text))
                    storage.write('email', emailController.text);
                  else
                    Get.snackbar("Incorrect Email", "Provide Email  in correct Format");
                }),
            SizedBox(height: 8),
            RaisedButton(
              child: Text("Read"),
              onPressed: () => print("The Email  is  ${storage.read('email')}"),
            ),
          ],
        ),
      ),
    );
  }
}
