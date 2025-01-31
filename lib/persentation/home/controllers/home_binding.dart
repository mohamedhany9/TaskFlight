
import 'package:get/get.dart';
import 'package:task31/data/datasources/service_api_service.dart';
import 'package:task31/data/repositories/service_repository_impl.dart';
import 'package:task31/domain/repositories/service_repository.dart';
import 'package:task31/domain/usecases/get_services.dart';
import 'package:task31/persentation/home/controllers/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {

    // Register API service with Dio
    Get.put<ServiceApiService>(
      ServiceApiService(), // Pass Dio if needed: ServiceApiService(Get.find<Dio>())
      permanent: true,
    );

    // Register repository
    Get.put<ServiceRepository>(
      ServiceRepositoryImpl(
        Get.find<ServiceApiService>(),
      ),
      permanent: true,
    );

    // Register use case
    Get.put<GetServices>(
      GetServices(Get.find<ServiceRepository>()),
      permanent: true,
    );

    // Register controller
    Get.put<HomeController>(
      HomeController(
        Get.find<GetServices>(),
      ),
    );
  }
}