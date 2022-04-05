// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidApiModel _$CovidApiModelFromJson(Map<String, dynamic> json) =>
    CovidApiModel(
      countries: Countries.fromJson(json['countriesRoute']),
    );

Map<String, dynamic> _$CovidApiModelToJson(CovidApiModel instance) =>
    <String, dynamic>{
      'countriesRoute': instance.countries,
    };

Countries _$CountriesFromJson(Map<String, dynamic> json) => Countries(
      name: json['Name'] as String,
    );

Map<String, dynamic> _$CountriesToJson(Countries instance) => <String, dynamic>{
      'Name': instance.name,
    };
