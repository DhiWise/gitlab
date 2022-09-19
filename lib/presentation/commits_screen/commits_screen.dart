import '../commits_screen/widgets/projectcommits_item_widget.dart';
import 'controller/commits_controller.dart';
import 'models/projectcommits_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';

class CommitsScreen extends GetWidget<CommitsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(left: 16, top: 15, right: 16),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(left: 6, right: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 8, bottom: 6),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: getSize(20.00),
                                                        width:
                                                            getSize(20.00)))),
                                            Padding(
                                                padding: getPadding(left: 22),
                                                child: Text(
                                                    controller.projectName
                                                            .toString() +
                                                        "msg_project_1_com".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoBold22
                                                        .copyWith()))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: getMargin(top: 44),
                                      decoration: AppDecoration.fillGray50,
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .commitsModelObj
                                              .value
                                              .projectcommitsItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ProjectcommitsItemModel model =
                                                controller.commitsModelObj.value
                                                        .projectcommitsItemList[
                                                    index];
                                            return ProjectcommitsItemWidget(
                                                model);
                                          }))))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
