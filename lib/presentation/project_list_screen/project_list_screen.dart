import '../project_list_screen/widgets/project_list_item_widget.dart';
import 'controller/project_list_controller.dart';
import 'models/project_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';

class ProjectListScreen extends GetWidget<ProjectListController> {
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
                              margin: getMargin(left: 22, top: 25, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 22),
                                        child: Text("lbl_project_list".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBold22
                                                .copyWith()))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 49, right: 16),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(394.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray101));
                                  },
                                  itemCount: controller.projectListModelObj
                                      .value.projectListItemList.length,
                                  itemBuilder: (context, index) {
                                    ProjectListItemModel model = controller
                                        .projectListModelObj
                                        .value
                                        .projectListItemList[index];
                                    return ProjectListItemWidget(model,
                                        onTapTxtProject1: () {
                                      Get.toNamed(
                                          AppRoutes.projectDetailsScreen,
                                          arguments: {
                                            NavigationArgs.projectName:
                                                controller
                                                    .projectListModelObj
                                                    .value
                                                    .projectListItemList[index]
                                                    .projectNameTxt
                                                    .toString(),
                                            NavigationArgs.projectId: controller
                                                .projectListModelObj
                                                .value
                                                .projectListItemList[index]
                                                .projectIdTxt
                                                .toString()
                                          });
                                    });
                                  }))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
