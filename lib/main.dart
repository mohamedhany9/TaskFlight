import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task31/persentation/home/controllers/home_binding.dart';
import 'package:task31/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(384, 805),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        rebuildFactor: (old, data) => true,
        builder: (context, child) {
          return  GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.initial,
            getPages: AppPages.routes,
            initialBinding: HomeBindings(),
          );
        });
  }
}

