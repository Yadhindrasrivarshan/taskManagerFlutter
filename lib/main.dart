import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taskmanagerapp/app/data/services/storage/repository.dart';
import 'package:taskmanagerapp/app/data/services/storage/services.dart';
import 'package:taskmanagerapp/app/modules/home/binding.dart';
import 'package:taskmanagerapp/app/modules/home/view.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List using GetX',
      home: HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
