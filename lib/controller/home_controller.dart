import 'package:get/get.dart';

class HomeController extends GetxController {
  // Manage the bottom navigation index
  var currentIndex = 0.obs;

  // Change index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}