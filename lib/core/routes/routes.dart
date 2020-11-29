import 'package:get/get.dart';
import 'package:getx_pagination/core/bindings/home_binding.dart';
import 'package:getx_pagination/view/screen/home/home_screen.dart';

final List<GetPage> routes = [
  GetPage(
      name: '/', page: () => HomeScreen(Get.find()), binding: HomeBindings()),
];
