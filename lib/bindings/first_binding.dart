import 'package:get/get.dart';

import '../controller/first_controller.dart';


class FirstBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<FirstController>(() => FirstController());
  }
}