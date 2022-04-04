import 'package:get/get.dart';
import 'package:sample_getx/model/zip_address.dart';
import 'package:sample_getx/repository/api_provider.dart';

class AddressViewController extends GetxController {
  final provider = ApiProvider();
  final address = Rx<CovidApiModel?>(null);

  Future<void> fetchAddress() async {
    final response = await provider.getAddress();
    address.value = response.body;
  }
}
