import 'package:get/get.dart';
import 'package:sample_getx/ui/view/address_view.dart';

class HomeViewController extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;

  void toAddressView() {
    Get.to(() => const AddressView());
  }
}
