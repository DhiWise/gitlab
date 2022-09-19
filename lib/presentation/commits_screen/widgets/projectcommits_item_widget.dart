import '../controller/commits_controller.dart';
import '../models/projectcommits_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';

// ignore: must_be_immutable
class ProjectcommitsItemWidget extends StatelessWidget {
  ProjectcommitsItemWidget(this.projectcommitsItemModelObj);

  ProjectcommitsItemModel projectcommitsItemModelObj;

  var controller = Get.find<CommitsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(
          top: 12.0,
          bottom: 12.0,
        ),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                364.00,
              ),
              margin: getMargin(
                left: 16,
                top: 24,
                right: 16,
                bottom: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    6.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      364.00,
                    ),
                    margin: getMargin(
                      top: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_title".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoMedium16Bluegray400.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          child: Obx(
                            () => Text(
                              projectcommitsItemModelObj.titleTxt.value,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      364.00,
                    ),
                    margin: getMargin(
                      top: 29,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_message".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoMedium16Bluegray400.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 8,
                          ),
                          child: Obx(
                            () => Text(
                              projectcommitsItemModelObj.messageTxt.value,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      364.00,
                    ),
                    margin: getMargin(
                      top: 27,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_date".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoMedium16Bluegray400.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          child: Obx(
                            () => Text(
                              projectcommitsItemModelObj.dateTxt.value,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      364.00,
                    ),
                    margin: getMargin(
                      top: 27,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_author".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoMedium16Bluegray400.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          child: Obx(
                            () => Text(
                              projectcommitsItemModelObj.auhorTxt.value,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
