import '../controller/commits_controller.dart';
import 'package:get/get.dart';

class CommitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommitsController());
  }
}
