import 'package:get/get.dart';
import 'package:learn_getx/screens/detail/controller/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}