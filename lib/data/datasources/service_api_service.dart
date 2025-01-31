import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task31/data/model/service_model.dart';

class ServiceApiService {
  final Dio dio;

  ServiceApiService({Dio? dio}) : dio = dio ?? Dio();

  Future<ServiceModel> getService() async {
    try {
      final response = await dio.get('',
          options: Options(
            headers: {},
          ));
      return ServiceModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch Service');
    }
  }
}
