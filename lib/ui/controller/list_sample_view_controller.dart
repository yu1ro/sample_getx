import 'package:get/get.dart';

class ListSampleViewController extends GetxController {

  final sampleList = RxList.from(['apple', 'orange']);
  
  void addList() {
    sampleList.add(sampleList.length.toString());
  }
}
