import 'package:get/get.dart';
import 'package:sample_getx/model/covid_api_model.dart';
import 'package:sample_getx/repository/api_provider.dart';

class ObjectApiViewController extends GetxController {
  final provider = ApiProvider();
  final address = Rx<CovidApiModel?>(null);

  Future<void> fetchAddress() async {
    final response = await provider.getAddress();
    address.value = response.body;
  }
}
