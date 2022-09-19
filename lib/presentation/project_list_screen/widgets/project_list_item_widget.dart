import '../controller/project_list_controller.dart';
import '../models/project_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/core/app_export.dart';

// ignore: must_be_immutable
class ProjectListItemWidget extends StatelessWidget {
  ProjectListItemWidget(this.projectListItemModelObj, {this.onTapTxtProject1});

  ProjectListItemModel projectListItemModelObj;

  var controller = Get.find<ProjectListController>();

  VoidCallback? onTapTxtProject1;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapTxtProject1!();
        },
        child: Padding(
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Obx(
            () => Text(
              projectListItemModelObj.projectNameTxt.value,
              textAlign: TextAlign.left,
              style: AppStyle.txtLatoMedium16Bluegray400.copyWith(
                height: 4.00,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
