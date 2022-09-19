import '../controller/project_list_controller.dart';
import 'package:get/get.dart';

class ProjectListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectListController());
  }
}
