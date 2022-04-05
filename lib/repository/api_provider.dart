import 'package:get/get.dart';
import 'package:sample_getx/model/covid_api_model.dart';

class ApiProvider extends GetConnect {
  // Get request
  Future<Response<CovidApiModel>> getAddress() => get(
        'https://api.covid19api.com/',
        decoder: CovidApiModel.fromJson,
      );
}
