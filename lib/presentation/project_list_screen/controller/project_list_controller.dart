import 'package:shared_preferences/shared_preferences.dart';

import '/core/app_export.dart';
import 'package:gitlab/presentation/project_list_screen/models/project_list_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/data/models/projects/get_projects_resp.dart';
import 'package:gitlab/data/apiClient/api_client.dart';
import '../models/project_list_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProjectListController extends GetxController {
  Rx<ProjectListModel> projectListModelObj = ProjectListModel().obs;

  List<GetProjectsResp> getProjectsResp = <GetProjectsResp>[];

  @override
  void onReady() {
    super.onReady();
    var token = Get.find<PrefUtils>().getToken();
    String queryParams = '?private_token=$token&page=1&per_page=70';
    this.callFetchProjects(
      successCall: _onFetchProjectsSuccess,
      errCall: _onFetchProjectsError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchProjects(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String queryParams = ""}) async {
    return Get.find<ApiClient>().fetchProjects(
        onSuccess: (resp) {
          onFetchProjectsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchProjectsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchProjectsSuccess(var response) {
    getProjectsResp =
        (response as List).map((e) => GetProjectsResp.fromJson(e)).toList();
  }

  void onFetchProjectsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchProjectsSuccess() {
    List<ProjectListItemModel> projectListItemModelList = [];
    if (getProjectsResp != null && getProjectsResp.isNotEmpty) {
      for (var element in getProjectsResp) {
        var projectListItemModel = ProjectListItemModel();
        projectListItemModel.projectNameTxt.value = element.name!.toString();
        projectListItemModel.projectIdTxt.value = element.id!.toString();
        projectListItemModelList.add(projectListItemModel);
      }
    }
    projectListModelObj.value.projectListItemList.value =
        projectListItemModelList;
  }

  void _onFetchProjectsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
