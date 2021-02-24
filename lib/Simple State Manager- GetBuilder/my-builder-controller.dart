import 'package:get/get.dart';
import 'package:getx_tutorial/models/student.dart';

class MyBuilderController extends GetxController {
  Student student = Student();

  void toUpperCase() => {student.name.value = student.name.value.toUpperCase(),update(['first'])};

  void toLowerCase() => {student.name.value = student.name.value.toLowerCase(),update()};


  void myDispose()=>print("has Stopped");
}
