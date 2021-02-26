import 'package:get/get.dart';
import 'package:getx_tutorial/GetConnect%20&%20StateMixin/modules/home/providers/user_provider.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();
    UserProvider().getUser().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      change(
        null,
        status: RxStatus.error(err.toString()),
      );
    });
  }
}
