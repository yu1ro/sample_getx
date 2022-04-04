import 'package:get/get.dart';
import 'package:sample_getx/model/zip_address.dart';

class ApiProvider extends GetConnect {
  // Get request
  Future<Response<CovidApiModel>> getAddress() => get(
        'https://api.covid19api.com/',
        decoder: CovidApiModel.fromJson,
      );
}
