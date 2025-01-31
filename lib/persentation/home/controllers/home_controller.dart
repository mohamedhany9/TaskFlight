
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task31/data/model/service_model.dart';
import 'package:task31/domain/usecases/get_services.dart';



class HomeController extends GetxController {

  final GetServices getServicesUseCase;
  HomeController(this.getServicesUseCase);

  final Rx<ServiceModel?> services = Rx<ServiceModel?>(null);
  final RxBool isLoading = false.obs;
  final RxString error = RxString('');

  Future<void> fetchServices() async {
    try {
      isLoading.value = true;
      error.value = '';
      final result = await getServicesUseCase.call();
      services.value = result;
    } catch (e) {
      error.value = e.toString();
      print('Error fetching services: $e');
    } finally {
      isLoading.value = false;
    }
  }


  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onClose() {
    super.onClose();
  }

}
