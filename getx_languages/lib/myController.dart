import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguage(var param1, var param2) {
    dynamic locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}
