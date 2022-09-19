import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(882.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(
                                      left: 93,
                                      top: 382,
                                      right: 93,
                                      bottom: 20),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgGroup,
                                      height: getVerticalSize(73.00),
                                      width: getHorizontalSize(241.00))))
                        ]))))));
  }
}
