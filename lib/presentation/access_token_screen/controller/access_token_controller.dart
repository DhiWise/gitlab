import '/core/app_export.dart';
import 'package:gitlab/presentation/access_token_screen/models/access_token_model.dart';
import 'package:flutter/material.dart';

class AccessTokenController extends GetxController {
  TextEditingController accessTokenController = TextEditingController();

  Rx<AccessTokenModel> accessTokenModelObj = AccessTokenModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    accessTokenController.dispose();
  }
}
