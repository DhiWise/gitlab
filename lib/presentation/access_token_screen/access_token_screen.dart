import 'controller/access_token_controller.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';
import 'package:gitlab/core/utils/validation_functions.dart';
import 'package:gitlab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AccessTokenScreen extends GetWidget<AccessTokenController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 16, top: 32, right: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(6.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 110, right: 110),
                                            child: Text(
                                                "msg_enter_your_acce".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoMedium16
                                                    .copyWith())),
                                        CustomTextFormField(
                                          width: 396,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.accessTokenController,
                                          hintText: "msg_enter_token_her".tr,
                                          margin: getMargin(top: 17),
                                          variant: TextFormFieldVariant
                                              .OutlineBluegray100,
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.centerLeft,
                                          validator: (value) {
                                            if (!isValidPassword(value)) {
                                              return "Please enter valid token";
                                            }
                                            return null;
                                          },
                                        )
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapAddTokenBtn();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 30,
                                          right: 16,
                                          bottom: 690),
                                      decoration: AppDecoration.fillBluegray700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder6),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 13, bottom: 13),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgVector,
                                                    height: getSize(21.00),
                                                    width: getSize(21.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 11,
                                                    top: 16,
                                                    bottom: 17),
                                                child: Text("lbl_add".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoMedium14
                                                        .copyWith(
                                                            height: 1.00)))
                                          ])))
                            ])))))));
  }

  onTapAddTokenBtn() {
    Get.find<PrefUtils>().setToken(controller.accessTokenController.value.text);
    Get.offNamed(AppRoutes.projectListScreen);
  }
}
