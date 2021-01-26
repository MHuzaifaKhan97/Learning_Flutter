import 'package:get/get.dart';
import 'package:learn_getx/screens/home/controller/home_controller.dart';
import 'package:learn_getx/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
