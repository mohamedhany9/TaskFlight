
import 'package:get/get.dart';
import 'package:task31/persentation/home/controllers/home_binding.dart';
import 'package:task31/persentation/home/views/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [


    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      bindings: [
        HomeBindings(),
      ],
    ),


  ];
}