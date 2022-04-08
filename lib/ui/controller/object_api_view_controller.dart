import 'package:get/get.dart';
import 'package:sample_getx/model/covid_api_model.dart';
import 'package:sample_getx/service/api_service.dart';

class ObjectApiViewController extends GetxController with StateMixin<CovidApiModel> {
  final provider = ApiService();
  final isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    try {
      final response = await provider.getAddress();
      if (response.body == null) {
        change(response.body, status: RxStatus.empty());
      } else {
        change(response.body, status: RxStatus.success());
      }
    } on Exception {
      change(null, status: RxStatus.error('error msg'));
    }
  }
}
