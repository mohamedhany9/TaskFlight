

import 'package:task31/data/datasources/service_api_service.dart';
import 'package:task31/data/model/service_model.dart';
import 'package:task31/domain/repositories/service_repository.dart';

class ServiceRepositoryImpl implements ServiceRepository{
  final ServiceApiService serviceApiService;

  ServiceRepositoryImpl(this.serviceApiService);

  @override
  Future<ServiceModel> getServices() async{
    return await serviceApiService.getService();
  }
}