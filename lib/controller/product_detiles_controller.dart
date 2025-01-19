import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  var itemCount = 0.obs; // Observable for item count
  var itemPrice = 1.7.obs; // Price per item
  var cartItemCount = 0.obs; // Observable for cart items

  void addToCart() {
    cartItemCount.value += itemCount.value;
    Get.snackbar('نجاح', '${itemCount.value} عناصر أُضيفت إلى السلة');
  }

  void viewCart() {
    Get.snackbar('السلة', 'يوجد ${cartItemCount.value} عناصر في السلة.');
  }

  void incrementItemCount() {
    itemCount.value++;
  }

  void decrementItemCount() {
    if (itemCount.value > 1) itemCount.value--;
  }
}
