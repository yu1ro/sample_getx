import 'package:get/get.dart';
import 'package:sample_getx/ui/view/object_api_view.dart';

class HomeViewController extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;

  void toApiSampleView() {
    Get.to(() => const ObjectApiView());
  }
}
