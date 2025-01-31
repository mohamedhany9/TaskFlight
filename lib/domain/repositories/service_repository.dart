
import 'package:task31/data/model/service_model.dart';

abstract class ServiceRepository{
  Future<ServiceModel> getServices();
}