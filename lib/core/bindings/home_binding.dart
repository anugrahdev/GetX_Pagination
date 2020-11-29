import 'package:get/get.dart';
import 'package:getx_pagination/core/controller/home_controller.dart';
import 'package:getx_pagination/core/repository/user_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
