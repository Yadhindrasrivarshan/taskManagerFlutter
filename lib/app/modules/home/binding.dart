import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:taskmanagerapp/app/data/providers/task/provider.dart';
import 'package:taskmanagerapp/app/data/services/storage/repository.dart';
import 'package:taskmanagerapp/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider())));
  }
}
