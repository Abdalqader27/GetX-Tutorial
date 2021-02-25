import 'package:get/get.dart';
import 'package:getx_tutorial/Models/student.dart';

class MyController extends GetxController {
  Student student = Student();

  void toUpperCase() => student.name.value = student.name.value.toUpperCase();

  void toLowerCase() => student.name.value = student.name.value.toLowerCase();
}
