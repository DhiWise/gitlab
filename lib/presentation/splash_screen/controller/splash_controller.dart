import 'package:shared_preferences/shared_preferences.dart';

import '/core/app_export.dart';
import 'package:gitlab/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  var token;
  @override
  void onReady() {
    super.onReady();

    var token = Get.find<PrefUtils>().getToken();

    Get.offNamed((token != null && token != '')
        ? AppRoutes.projectListScreen
        : AppRoutes.accessTokenScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
