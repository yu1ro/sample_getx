class CovidApiModel {
  final Countries countries;

  CovidApiModel.fromJson(dynamic json)
      : countries = Countries.fromJson(json['countriesRoute']);
}

class Countries {
  final String name;

  Countries.fromJson(Map<String, dynamic> json)
        : name = json['Name'];
}
