import '../controller/jobs_controller.dart';
import 'package:get/get.dart';

class JobsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobsController());
  }
}
