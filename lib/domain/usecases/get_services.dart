
import 'package:task31/data/model/service_model.dart';
import 'package:task31/domain/repositories/service_repository.dart';

class GetServices{
  final ServiceRepository repository;

  GetServices(this.repository);

  Future<ServiceModel> call() async{
    return await repository.getServices();
  }
}