import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/view/list_sample_view.dart';
import 'package:sample_getx/ui/view/object_api_view.dart';

class HomeViewController extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;

  void toApiSampleView() {
    Get.to(() => const ObjectApiView());
  }

  void toListSampleView() {
    Get.to(() => const ListSampleView());
  }

  void showDialog() {
    Get.defaultDialog(title: 'title', content: const Text('content') );
  }
}
