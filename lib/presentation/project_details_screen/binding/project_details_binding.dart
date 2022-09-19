import '../controller/project_details_controller.dart';
import 'package:get/get.dart';

class ProjectDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectDetailsController());
  }
}
