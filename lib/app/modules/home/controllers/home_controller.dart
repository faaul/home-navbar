import 'package:get/get.dart';

class HomeController extends GetxController {
  var selected = 0.obs;

  void changeTabIndex(int index) {
    selected.value = index;
  }
}
