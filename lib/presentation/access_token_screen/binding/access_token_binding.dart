import '../controller/access_token_controller.dart';
import 'package:get/get.dart';

class AccessTokenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccessTokenController());
  }
}
