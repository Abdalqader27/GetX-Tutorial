import 'package:get/get.dart';
import 'package:getx_tutorial/GetConnect%20&%20StateMixin/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
