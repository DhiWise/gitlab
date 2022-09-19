import 'controller/project_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';
import 'package:gitlab/widgets/custom_button.dart';

class ProjectDetailsScreen extends GetWidget<ProjectDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 22, top: 15, right: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 8, bottom: 6),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getSize(20.00),
                                                width: getSize(20.00)))),
                                    Padding(
                                        padding: getPadding(left: 22),
                                        child: Text(
                                            controller.projectName
                                                .toString()
                                                .tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBold22
                                                .copyWith()))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 16, top: 44, right: 16, bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(6.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        width: 396,
                                        text: "lbl_commit".tr,
                                        onTap: onTapBtnCommit),
                                    CustomButton(
                                        width: 396,
                                        text: "lbl_jobs".tr,
                                        margin: getMargin(top: 24),
                                        onTap: onTapBtnJobs)
                                  ])))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnCommit() {
    Get.toNamed(AppRoutes.commitsScreen, arguments: {
      NavigationArgs.projectName: controller.projectName.toString(),
      NavigationArgs.projectId: controller.projectId..toString()
    });
  }

  onTapBtnJobs() {
    Get.toNamed(AppRoutes.jobsScreen, arguments: {
      NavigationArgs.projectName: controller.projectName.toString(),
      NavigationArgs.projectId: controller.projectId..toString()
    });
  }
}
